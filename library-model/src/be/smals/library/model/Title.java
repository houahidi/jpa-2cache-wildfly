/**
 * 
 */
package be.smals.library.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Transient;

/**
 * Library title
 * 
 * @author Administrateur
 *
 */

@Entity(name="Title")
@Table(name="title_t")
@Inheritance(strategy=InheritanceType.JOINED)
//@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)
//@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
//@DiscriminatorColumn(name="type",length=1)
//@DiscriminatorValue("T")
public class Title {
	
	
	/*@TableGenerator(
	        name="SequenceGen", 
	        table="Table_SEQUENCE_GEN", 
	        pkColumnName="GEN_KEY", 
	        valueColumnName="GEN_VALUE", 
	        pkColumnValue="TITLE_ID", 
	        allocationSize=1)
	   
	    @GeneratedValue(strategy=GenerationType.TABLE, generator="SequenceGen")*/
	@Id
	protected long id;
	protected String name;
	private String author;
	
	//chargement tardif des attributs
	//@Basic(fetch=FetchType.LAZY)
	private Date publishedAt;
	
	@OneToMany(mappedBy="title", cascade=CascadeType.ALL)
	private List<Item> items;
	
	@ManyToMany(mappedBy="titles")
	private List<Category> categories;
	
	public Title() {
		this.items = new ArrayList<>();
		this.categories = new ArrayList<>();
	}

	public Title(long id, String name, String author, Date publishedAt) {
		this();
		this.id = id;
		this.name = name;
		this.author = author;
		this.publishedAt = publishedAt;
		
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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getPublishedAt() {
		return publishedAt;
	}

	public void setPublishedAt(Date publishedAt) {
		this.publishedAt = publishedAt;
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
		Title other = (Title) obj;
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
		return "Title [id=" + id + ", name=" + name + "]";
	}

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		//remove old items
		if(this.items != null && this.items.size() > 0) {
			for(Item i : new ArrayList<Item>(this.items)) {
				removeItem(i);
				
			}
		}
		//add new items	
		for(Item i : items) {
			addItem(i);
			
		}
	}

	public void addItem(Item item) {
		if( ! items.contains(item)) {
			items.add(item);
			item.setTitle(this);
		}
	}
	
	public void removeItem(Item item) {
		if( items.contains(item)) {
			items.remove(item);
			item.setTitle(null);
		}
	}
	
	
	public void addCategory(Category category) {
		if( ! categories.contains(category)) {
			categories.add(category);
			category.addTitle(this);
		}
	}
	
	public void removeCategory(Category category) {
		if( categories.contains(category)) {
			categories.remove(category);
			category.removeTitle(this);
		}
	}

	public List<Category> getCategories() {
		return categories;
	}
	
	
}
