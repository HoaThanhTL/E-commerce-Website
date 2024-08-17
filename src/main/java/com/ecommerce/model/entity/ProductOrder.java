package com.ecommerce.model.entity;

import javax.persistence.*;
import java.util.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "product_order")
@NamedQueries({
		@NamedQuery(name = "ProductOrder.findAll", query = "SELECT po FROM ProductOrder po ORDER BY po.orderDate DESC"),
		@NamedQuery(name = "ProductOrder.countAll", query = "SELECT COUNT(*) FROM ProductOrder"),
		@NamedQuery(name = "ProductOrder.countByCustomer", query = "SELECT COUNT(po.orderId) FROM ProductOrder po WHERE po.customer.customerId = :customerId"),
		@NamedQuery(name = "ProductOrder.findByCustomer", query = "SELECT po FROM ProductOrder po WHERE po.customer.customerId = :customerId ORDER BY po.orderDate DESC"),
		@NamedQuery(name = "ProductOrder.findByIdAndCustomer", query = "SELECT po FROM ProductOrder po WHERE po.orderId = :orderId AND po.customer.customerId = :customerId") })
public class ProductOrder {

	private Integer orderId;
	private Customer customer;
	private Date orderDate;
	private String deliNumberHouse;
	private String deliStreet;
	private String deliFirstName;
	private String deliLastName;
	private String deliPhone;
	private String deliCountry;
	private String deliCity;
	private String deliDistrict;
	private String deliZipCode;
	private String paymentMethod;
	private float shippingFee;
	private float tax;
	private float subtotal;
	private float total;
	private String status;
	private Set<OrderDetail> orderDetails = new HashSet<>(0);

	public ProductOrder() {
	}

	public ProductOrder(Customer customer, Date orderDate, String deliNumberHouse, String deliStreet,
			String deliFirstName, String deliLastName, String deliPhone, String deliCountry,
			String deliDistrict, String deliCity, String deliZipCode, String paymentMethod,
			float shippingFee, float tax, float subtotal, float total, String status) {
		this.customer = customer;
		this.orderDate = orderDate;
		this.deliNumberHouse = deliNumberHouse;
		this.deliStreet = deliStreet;
		this.deliFirstName = deliFirstName;
		this.deliLastName = deliLastName;
		this.deliPhone = deliPhone;
		this.deliCountry = deliCountry;
		this.deliDistrict = deliDistrict;
		this.deliCity = deliCity;
		this.deliZipCode = deliZipCode;
		this.paymentMethod = paymentMethod;
		this.shippingFee = shippingFee;
		this.tax = tax;
		this.subtotal = subtotal;
		this.total = total;
		this.status = status;
	}

	public ProductOrder(Customer customer, Date orderDate, String deliNumberHouse, String deliStreet,
			String deliFirstName, String deliLastName, String deliPhone, String deliCountry,
			String deliDistrict, String deliCity, String deliZipCode, String paymentMethod,
			float shippingFee, float tax, float subtotal, float total, String status, Set<OrderDetail> orderDetails) {
		this.customer = customer;
		this.orderDate = orderDate;
		this.deliNumberHouse = deliNumberHouse;
		this.deliStreet = deliStreet;
		this.deliFirstName = deliFirstName;
		this.deliLastName = deliLastName;
		this.deliPhone = deliPhone;
		this.deliCountry = deliCountry;
		this.deliDistrict = deliDistrict;
		this.deliCity = deliCity;
		this.deliZipCode = deliZipCode;
		this.paymentMethod = paymentMethod;
		this.shippingFee = shippingFee;
		this.tax = tax;
		this.subtotal = subtotal;
		this.total = total;
		this.status = status;
		this.orderDetails = orderDetails;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "order_id", unique = true, nullable = false)
	public Integer getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "customer_id", nullable = false)
	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "order_date", nullable = false, length = 19)
	public Date getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	@Column(name = "deli_numberHouse", nullable = false, length = 128)
	public String getDeliNumberHouse() {
		return this.deliNumberHouse;
	}

	public void setDeliNumberHouse(String deliNumberHouse) {
		this.deliNumberHouse = deliNumberHouse;
	}

	@Column(name = "deli_street", nullable = false, length = 128)
	public String getDeliStreet() {
		return this.deliStreet;
	}

	public void setDeliStreet(String deliStreet) {
		this.deliStreet = deliStreet;
	}

	@Column(name = "deli_firstName", nullable = false, length = 32)
	public String getDeliFirstName() {
		return this.deliFirstName;
	}

	public void setDeliFirstName(String deliFirstName) {
		this.deliFirstName = deliFirstName;
	}

	@Column(name = "deli_lastName", nullable = false, length = 32)
	public String getDeliLastName() {
		return this.deliLastName;
	}

	public void setDeliLastName(String deliLastName) {
		this.deliLastName = deliLastName;
	}

	@Transient
	public String getDeliFullName() {
		return String.format("%s %s", this.deliFirstName, this.deliLastName);
	}

	@Column(name = "deli_phone", nullable = false, length = 16)
	public String getDeliPhone() {
		return this.deliPhone;
	}

	public void setDeliPhone(String deliPhone) {
		this.deliPhone = deliPhone;
	}

	@Column(name = "deli_country", nullable = false, length = 2)
	public String getDeliCountry() {
		return this.deliCountry;
	}

	public void setDeliCountry(String deliCountry) {
		this.deliCountry = deliCountry;
	}

	@Transient
	public String getDeliCountryName() {
		return new Locale("", this.deliCountry).getDisplayCountry();
	}

	@Column(name = "deli_city", nullable = false, length = 32)
	public String getDeliCity() {
		return this.deliCity;
	}

	public void setDeliCity(String deliCity) {
		this.deliCity = deliCity;
	}

	@Column(name = "deli_district", nullable = false, length = 32)
	public String getDeliDistrict() {
		return this.deliDistrict;
	}

	public void setDeliDistrict(String deliDistrict) {
		this.deliDistrict = deliDistrict;
	}

	@Column(name = "deli_zip_code", nullable = false, length = 16)
	public String getDeliZipCode() {
		return this.deliZipCode;
	}

	public void setDeliZipCode(String deliZipCode) {
		this.deliZipCode = deliZipCode;
	}

	@Column(name = "payment_method", nullable = false, length = 32)
	public String getPaymentMethod() {
		return this.paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	@Column(name = "shipping_fee", nullable = false, precision = 12)
	public float getShippingFee() {
		return this.shippingFee;
	}

	public void setShippingFee(float shippingFee) {
		this.shippingFee = shippingFee;
	}

	@Column(name = "tax", nullable = false, precision = 12)
	public float getTax() {
		return this.tax;
	}

	public void setTax(float tax) {
		this.tax = tax;
	}

	@Column(name = "subtotal", nullable = false, precision = 12)
	public float getSubtotal() {
		return this.subtotal;
	}

	public void setSubtotal(float subtotal) {
		this.subtotal = subtotal;
	}

	@Column(name = "total", nullable = false, precision = 12)
	public float getTotal() {
		return this.total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	@Column(name = "status", nullable = false, length = 32)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "productOrder", cascade = CascadeType.ALL, orphanRemoval = true)
	public Set<OrderDetail> getOrderDetails() {
		return this.orderDetails;
	}

	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	@Transient
	public int getProductCopies() {
		int total = 0;

		for (OrderDetail orderDetail : orderDetails) {
			total += orderDetail.getQuantity();
		}

		return total;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;
		ProductOrder that = (ProductOrder) o;
		return orderId.equals(that.orderId);
	}

	@Override
	public int hashCode() {
		return Objects.hash(orderId);
	}
}
