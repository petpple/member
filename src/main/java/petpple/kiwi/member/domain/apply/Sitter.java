package petpple.kiwi.member.domain.apply;

public class Sitter {
	String title, content, depositor
	, accNumber
	, smokeId, petSizeId
	, petKindId, bankId;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDepositor() {
		return depositor;
	}

	public void setDepositor(String depositor) {
		this.depositor = depositor;
	}

	public String getAccNumber() {
		return accNumber;
	}

	public void setAccNumber(String accNumber) {
		this.accNumber = accNumber;
	}

	/*
	 * public String getTmpMemberId() { return tmpMemberId; }
	 * 
	 * public void setTmpMemberId(String tmpMemberId) { this.tmpMemberId =
	 * tmpMemberId; }
	 */

	public String getSmokeId() {
		return smokeId;
	}

	public void setSmokeId(String smokeId) {
		this.smokeId = smokeId;
	}

	public String getPetSizeId() {
		return petSizeId;
	}

	public void setPetSizeId(String petSizeId) {
		this.petSizeId = petSizeId;
	}

	public String getPetKindId() {
		return petKindId;
	}

	public void setPetKindId(String petKindId) {
		this.petKindId = petKindId;
	}

	public String getBankId() {
		return bankId;
	}

	public void setBankId(String bankId) {
		this.bankId = bankId;
	}
}
