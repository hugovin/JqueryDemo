package com.JqueryDemo.Beans;

public class Payment {
	
	public class CreditCard{
		private String Name;
		private String CardNumber;
		private String ExpireMonth;
		private String ExpireDay;
		private String CCV;
		
		
		
		public CreditCard() {
			super();
		}
		public CreditCard(String name, String cardNumber, String expireMonth,
				String expireDay, String cCV) {
			super();
			Name = name;
			CardNumber = cardNumber;
			ExpireMonth = expireMonth;
			ExpireDay = expireDay;
			CCV = cCV;
		}
		public String getName() {
			return Name;
		}
		public void setName(String name) {
			Name = name;
		}
		public String getCardNumber() {
			return CardNumber;
		}
		public void setCardNumber(String cardNumber) {
			CardNumber = cardNumber;
		}
		public String getExpireMonth() {
			return ExpireMonth;
		}
		public void setExpireMonth(String expireMonth) {
			ExpireMonth = expireMonth;
		}
		public String getExpireDay() {
			return ExpireDay;
		}
		public void setExpireDay(String expireDay) {
			ExpireDay = expireDay;
		}
		public String getCCV() {
			return CCV;
		}
		public void setCCV(String cCV) {
			CCV = cCV;
		}		
		
	};
	
	public class PayWithCheck{
		private String DueDate;
		private String CheckNumber;
		

		public String getCheckNumber() {
			return CheckNumber;
		}

		public void setCheckNumber(String checkNumber) {
			CheckNumber = checkNumber;
		}

		public PayWithCheck() {
			super();
		}

		public PayWithCheck(String dueDate) {
			super();
			DueDate = dueDate;
		}

		public String getDueDate() {
			return DueDate;
		}

		public void setDueDate(String dueDate) {
			DueDate = dueDate;
		}
		
	}
}
