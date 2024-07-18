import 'package:repository/data/transaction/model/create_transaction/create_transaction_request_model.dart';
import 'package:repository/domain/transaction/entities/create_transaction/create_transaction_info.dart';
import 'package:repository/data/exchange_rate/repository/mapping/calculation_mode_mapping.dart';

extension CreateTransactionRequestDataMapping on CreateTransactionInfo {
  CreateTransactionRequest toRequest() {
    return CreateTransactionRequest(
      promoCode: promotionalCode,
      remittanceInfo: RemittanceInfo(
        sendCurrency: senderInfo?.currency?.id,
        depositMethodCode: senderInfo?.depositMode?.id,
        amountMethodCode: calculationMode?.value,
        includeFee: false,
        remittanceAmount: amount,
        remittanceFee: "",
        taxAmount: taxAmount,
        totalAmount: "",
        estimatedReceivingAmount: receivingAmount,
        exchangeRate: exchangeRate,
        beneficiary: Beneficiary(
          beneficiaryId: receiverInfo?.id,
          remittanceReasonCode: purposeOfRemittance?.id,
          sourceOfFundsCode: sourceOfIncome?.id,
          remittanceReasonDetail: sourceOfIncome?.value,
          purposeOfRemittanceOther: purposeOfRemittanceOther,
          sourceOfFundsOther: sourceOfIncomeOther,
        ),
      ),
    );
  }
}
