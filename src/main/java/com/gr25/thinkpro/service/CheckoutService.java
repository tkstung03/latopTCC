package com.gr25.thinkpro.service;

import com.gr25.thinkpro.domain.dto.request.BillInfo;
import com.gr25.thinkpro.domain.dto.request.PaymentInfo;
import com.gr25.thinkpro.domain.entity.CartDetail;
import com.gr25.thinkpro.domain.entity.Customer;
import jakarta.servlet.http.HttpSession;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface CheckoutService {
    void handlePlaceOrder(Customer currentUser, HttpSession session, String receiverName, String receiverAddress, String receiverPhone, String paymentMethod);

    void handleUpdateCartBeforeCheckout(List<CartDetail> cartDetails);

    List<BillInfo> fetchOrderByUser(Customer currentUser);

    void cancelBill(String email, long oderId, HttpSession session, int i);

    PaymentInfo getPaymentInfo();
}
