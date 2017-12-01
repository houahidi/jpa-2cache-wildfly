/**
 * 
 */
package be.smals.library.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Title items
 * 
 * @author Administrateur
 *
 */
@Entity(name="Item")
@Table(name="item_t")
public class Item{
	@Id
	@Column(name="inventory_id")
	private String inventoryNumber;
	
	@Column(name="status", nullable=false)
	@Enumerated(EnumType.STRING)
	private ItemStatus status;
	
	@ManyToOne
	@JoinColumn(name="title_id", foreignKey=@ForeignKey(name="fk_title_id"))
	private Title title;
	
	public Item() {
		
		this.status = ItemStatus.Available;
	}

	public Item(String inventoryNumber, ItemStatus status) {
		this.inventoryNumber = inventoryNumber;
		this.status = status;
	}

	public Item(String inventoryNumber, ItemStatus status, Title title) {
		this(inventoryNumber,status);
		this.status = status;
		setTitle(title);
	}

	public String getInventoryNumber() {
		return inventoryNumber;
	}

	public void setInventoryNumber(String inventoryNumber) {
		this.inventoryNumber = inventoryNumber;
	}

	public ItemStatus getStatus() {
		return status;
	}

	public void setStatus(ItemStatus status) {
		this.status = status;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((inventoryNumber == null) ? 0 : inventoryNumber.hashCode());
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
		Item other = (Item) obj;
		if (inventoryNumber == null) {
			if (other.inventoryNumber != null)
				return false;
		} else if (!inventoryNumber.equals(other.inventoryNumber))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Item [" + "status=" + status +",inventoryNumber=" + inventoryNumber +  "]";
	}

	public Title getTitle() {
		return title;
	}

	public void setTitle(Title title) {
		//this.title = title;
		//remove old item
		if (this.title != null && this.title != title) {
			this.title.removeItem(this);
		}
		
		this.title = title;
		
		//add the new item to title items list
		if(title != null) {
			title.addItem(this);
		}
	}
	
	

}
