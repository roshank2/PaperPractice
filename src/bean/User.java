/********************* Roshan Kumar ***********************/

package bean;

import java.util.*;
import java.util.regex.Pattern;

public class User {
	private String uname, uemail, upass, ucpass, notify;
	private Map<String, String> errors;

	public User() {
		uname = "";
		uemail = "";
		upass = "";
		ucpass = "";
		setNotify("");
		errors = new HashMap<>();
	}

	public boolean validate() {
		boolean bool = true;
		if (uname.equals("")) {
			errors.put("uname", "Please enter your name");
			uname = "";
			bool = false;
		}

		if (uemail.equals("") || (!isValid(uemail))) {
			errors.put("uemail", "Please enter a valid email address");
			uemail = "";
			bool = false;
		}
		if (upass.equals("") || (upass.length() < 6)) {
			errors.put("upass", "Please enter a valid password (at least of 6 characters)");
			upass = "";
			bool = false;
		}
		if (!upass.equals("") && (ucpass.equals("") || !upass.equals(ucpass))) {
			errors.put("ucpass", "Password does not match");
			ucpass = "";
			bool = false;
		}
		return bool;
	}

	public String getErrorMsg(String s) {
		String errorMsg = (String) errors.get(s.trim());
		return (errorMsg == null) ? "" : errorMsg;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUcpass() {
		return ucpass;
	}

	public void setUcpass(String ucpass) {
		this.ucpass = ucpass;
	}

	public static boolean isValid(String email) {
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\." + "[a-zA-Z0-9_+&*-]+)*@" + "(?:[a-zA-Z0-9-]+\\.)+[a-z"
				+ "A-Z]{2,7}$";

		Pattern pat = Pattern.compile(emailRegex);
		if (email == null)
			return false;
		return pat.matcher(email).matches();
	}

	public void setErrors(String key, String msg) {
		errors.put(key, msg);
	}

	public String getNotify() {
		return notify;
	}

	public void setNotify(String notify) {
		this.notify = notify;
	}
}
