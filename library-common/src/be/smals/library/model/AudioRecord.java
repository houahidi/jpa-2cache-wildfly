package be.smals.library.model;

import java.util.Date;

import javax.persistence.Cacheable;
import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="audiorecord_t")
//@DiscriminatorValue("A")
@Cacheable(true)
public class AudioRecord extends Title {
	@Column(unique=true, length=13)
	private int duration;
	private int pistes;
	
	public AudioRecord() {
		super();
	}

	
	public AudioRecord(long id, String name, String author, Date publishedAt) {
		super(id, name, author, publishedAt);
	}


	public AudioRecord(long id, String name, String author, Date publishedAt, int duration, int pistes) {
		super(id, name, author, publishedAt);
		this.duration = duration;
		this.pistes = pistes;
	}


	public int getDuration() {
		return duration;
	}


	public void setDuration(int duration) {
		this.duration = duration;
	}


	public int getPistes() {
		return pistes;
	}


	public void setPistes(int pistes) {
		this.pistes = pistes;
	}





}
