package ownerRentalHouse;

public class Member {
	 int ownerid;
     String name;
	 int getOwnerid() {
		return ownerid;
	}
      void setOwnerid(int ownerid) {
		this.ownerid = ownerid;
	}
	  String getName() {
		return name;
	}
      void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Member [ownerid=" + ownerid + ", name=" + name + "]";
	}

}
