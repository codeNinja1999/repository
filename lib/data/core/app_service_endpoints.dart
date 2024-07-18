class AppServiceEndpoints {
  static const generateKey = "common/session-id";
  static const createBeneficiary = "beneficiary/register-benificiary";
  static const updateBeneficiary = "beneficiary/update-benificiary/";
  static const beneficiaryInfo = "beneficiary/get-beneficiary-info/";
  static const deleteBeneficiary = "beneficiary/delete-benificiary/";
  static const login = "common/login";
  static const changePassword = "member/update-password";
  static const resetPassword = "member/reset-password";
  static const changeTransactionpin = "member/trade-password";
  static const register = "Member/registermember";
  static const sendOTP = "common/onetime-otp";
  static const verifyOTP = "common/onetime-otp/validate";
  static const catalogs = "catalogue/getcatalogue";
  static const walletchannelList = "catalogue/getpaymentgatewaycollection";
  static const loadWallet = "wallet/load";
  static const withdrawWallet = "wallet/withdraw";
  static const p2pVerification = "wallet/P2P-Verification";
  static const p2pload = "wallet/P2P-load";
  static const p2ploadConfirm = "wallet/P2P-load-confirm";
  static const entertainmentList = "kumu/kumu-products";
  static const verifyUser = "kumu/verifyuser";
  static const kumuTopup = "kumu/topup";
  static const bankList = "catalogue/getlinkedbank";
  static const confirmLoadWallet = "wallet/load-confirm";
  static const bankVerificationValidateOtp = "wallet/Validate-GateWayOTP";
  static const linkBank = "wallet/link-account";
  static const linkBankChannelList = "catalogue/getlinkedbank";
  static const confirmWithdrawWallet = "wallet/withdraw-confirm";
  static const memberCatalogs = "catalogue/catalogue-member";
  static const transactionList = "remittance/transaction-history";
  static const transactionDetails = "remittance/transaction-detail/";
  static const calculateRemittance = "remittance/calculate-remittance";
  static const registerRemittance = "remittance/register-remittance";
  static const commitRemittance = "remittance/commit-remittance";
  static const cancelTransaction = "remittance/cancel-remittance";
  static const message = "common/message/user";
  static const notification = "common/notification";
  static const serviceFee = "common/service_fee";
  static const getUserInfo = "member/get-user-info";
  static const getCustomerDocument = "FileUpload/get-document";
  static const logoutUser = "member/logout";
  static const dashboardData = "common/dashboard_data";
  static const updateMember = "member/update-member";
  static const levelOneKycDocument = "FileUpload/upload-kyc1-image";
  static const documentUpload = "FileUpload/customer-document";
  static const receiptUpload = "FileUpload/RemittanceDocumentUpload";
  static const uploadCustomerKyc = "FileUpload/customer-kyc";
  static const exchangeRate = "common/fee";
  static const exchangeRateList = "common/rate/";
  static const exchangeRateHistoryList = "common/exchange-rate-list";
  static const history = "wallet/report";
  static const topupCategoryList = "MobileTopup/getCategoryList/";
  static const topupProductList = "MobileTopup/productlist";
  static const topupBuyOrder = "mobiletopup/buyorder";
  static const changeProfileImage = "fileupload/profile-pic";
  static const faqDetailList = "catalogue/getFAQDetailList";
  static const termAndCondition = "staticfileurl/gettermcondition";
  //wallet
  static const topUp = "wallet/create-topup";
}
