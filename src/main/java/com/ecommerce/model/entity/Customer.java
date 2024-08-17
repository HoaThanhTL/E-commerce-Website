package com.ecommerce.model.entity;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "customer", uniqueConstraints = @UniqueConstraint(columnNames = "email"))
@NamedQueries({ @NamedQuery(name = "Customer.findAll", query = "SELECT c FROM Customer c ORDER BY c.registerDate DESC"),
		@NamedQuery(name = "Customer.findByEmail", query = "SELECT c FROM Customer c WHERE c.email = :email"),
		@NamedQuery(name = "Customer.countAll", query = "SELECT COUNT(c.email) FROM Customer c"),
		@NamedQuery(name = "Customer.findByEmailAndPassword", query = "SELECT c FROM Customer c WHERE c.email = :email AND c.password = :password") })
public class Customer {

	private Integer customerId;
	private String email;
	private String firstName;
	private String lastName;
	private String numberHouse;
	private String street;
	private String district;
	private String city;
	private String country;
	private String phone;
	private String zipCode;
	private String password;
	private Date registerDate;
	private Set<Review> reviews = new HashSet<>(0);
	private Set<ProductOrder> productOrders = new HashSet<>(0);

	public Customer() {
	}

	public Customer(String email, String firstName, String lastName, String numberHouse, String street,
			String district, String city, String country, String phone, String zipCode, String password,
			Date registerDate) {
		this.email = email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.numberHouse = numberHouse;
		this.street = street;
		this.district = district;
		this.city = city;
		this.country = country;
		this.phone = phone;
		this.zipCode = zipCode;
		this.password = password;
		this.registerDate = registerDate;
	}

	public Customer(String email, String firstName, String lastName, String numberHouse, String street,
			String district, String city, String country, String phone, String zipCode, String password, Date registerDate,
			Set<Review> reviews, Set<ProductOrder> productOrders) {
		this.email = email;
		this.firstName = firstName;
		this.lastName = lastName;
		this.numberHouse = numberHouse;
		this.street = street;
		this.district = district;
		this.city = city;
		this.country = country;
		this.phone = phone;
		this.zipCode = zipCode;
		this.password = password;
		this.registerDate = registerDate;
		this.reviews = reviews;
		this.productOrders = productOrders;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "customer_id", unique = true, nullable = false)
	public Integer getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	@Column(name = "email", unique = true, nullable = false, length = 64)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "first_name", nullable = false, length = 32)
	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "last_name", nullable = false, length = 32)
	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Transient
	public String getFullName() {
		return String.format("%s %s", this.firstName, this.lastName);
	}

	@Column(name = "numberHouse", nullable = false, length = 128)
	public String getNumberHouse() {
		return this.numberHouse;
	}

	public void setNumberHouse(String numberHouse) {
		this.numberHouse = numberHouse;
	}

	@Column(name = "street", nullable = false, length = 128)
	public String getStreet() {
		return this.street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	@Column(name = "district", nullable = false, length = 32)
	public String getDistrict() {
		return this.district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	@Column(name = "city", nullable = false, length = 32)
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "country", nullable = false, length = 2)
	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Transient
	public String getCountryName() {
		return new Locale("", this.country).getDisplayCountry();
	}

	@Column(name = "phone", nullable = false, length = 16)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "zip_code", nullable = false, length = 16)
	public String getZipCode() {
		return this.zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	@Column(name = "password", nullable = false, length = 32)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "register_date", nullable = false, length = 19)
	public Date getRegisterDate() {
		return this.registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "customer")
	public Set<Review> getReviews() {
		return this.reviews;
	}

	public void setReviews(Set<Review> reviews) {
		this.reviews = reviews;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "customer")
	public Set<ProductOrder> getProductOrders() {
		return this.productOrders;
	}

	public void setProductOrders(Set<ProductOrder> productOrders) {
		this.productOrders = productOrders;
	}

}
