/**
 * 
 */
package be.smals.library.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 * Library categories
 * 
 * @author Administrateur
 *
 */
@Entity(name="Category")
@Table(name="category_t")
public class Category {
	@Id
	@Column(name="identifier")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(name="name", unique=true, length=20)
	private String name;
	
	private String address;
	
	

	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(name="category_title_r",
				joinColumns=@JoinColumn(name="category_id",foreignKey=@ForeignKey(name="fk_title_id")),
				inverseJoinColumns=@JoinColumn(name="title_id",foreignKey=@ForeignKey(name="fk_category_id"))
			)
	private List<Title> titles;
	
	
	public Category() {
		this.titles = new ArrayList<>();
	}

	public Category(long id, String name) {
		this();
		this.id = id;
		this.name = name;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Category other = (Category) obj;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + "]";
	}

	public List<Title> getTitles() {
		return titles;
	}

	
	public void addTitle(Title title) {
		if( ! this.titles.contains(title)) {
			this.titles.add(title);
			title.addCategory(this);
		}
	}
	
	public void removeTitle(Title title) {
		if( this.titles.contains(title)) {
			this.titles.remove(title);
			title.removeCategory(this);
		}
	}
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
