package com.java.jstl;

public class Name {
		private String lastName;
		private String firstName;
		
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
			System.out.println(this.lastName);
		}
		
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
}
