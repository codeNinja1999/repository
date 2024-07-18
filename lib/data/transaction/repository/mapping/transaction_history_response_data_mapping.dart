import 'package:repository/data/transaction/model/history/transaction_history_response_model.dart';
import 'package:repository/domain/catalog/entities/catalogs.dart';
import 'package:repository/domain/common/model/name.dart';
import 'package:repository/domain/receiver/entities/receiver_payout_info.dart';
import 'package:repository/domain/receiver/entities/receiver_personal_info.dart';
import 'package:repository/domain/transaction/entities/create_transaction/create_transaction_info.dart';
import 'package:repository/domain/transaction/entities/transaction_receiver.dart';
import 'package:repository/domain/transaction/entities/transaction_sender_info.dart';

import 'transaction_status_mapping.dart';

extension TransactionHistoryResponseDataMapping on TransactionHistoryResultList {
  DetailedTransaction toDomain() {
    final responseData = DetailedTransaction(
        id: transactionId,
        status: TransactionStatusMapping.fromString(code: statusCode ?? '', value: status ?? ''),
        senderResult: DetailedTransactionSenderResult(
            name: Name(firstName: senderFirstName, lastName: senderLastName),
            currency: Catalog(id: "", value: currency ?? ""),
            realAmount: tradeAmount),
        receiverResult: TransactionReceiverResult(
            id: "",
            personalInfo: ReceiverPersonalInfo(
              fullName: '$beneficiaryFirstName $beneficiaryLastName',
              nameEnglish: Name(firstName: beneficiaryFirstName, lastName: beneficiaryLastName),
              nickName: transferNickname,
            ),
            payoutInfo: DetailedReceiverPayoutInfo(
              id: "",
              mode: PaymentMode(
                id: paymentType ?? "",
                value: paymentType ?? "",
                receiverCurrency: currency,
              ),
            )),
        calculationMode: null,
        totalAmountToPay: tradeAmount,
        currentRate: "",
        referenceNumber: referenceNumber,
        receiptTS: tradeTs,
        depositType: depositType,
        depositTypeName: depositTypeName,
        customerDeposited: "");
    return responseData;
  }
}
