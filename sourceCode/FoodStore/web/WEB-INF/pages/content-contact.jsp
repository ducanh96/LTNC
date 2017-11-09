<%-- 
    Document   : content-contact
    Created on : Nov 7, 2017, 9:01:59 AM
    Author     : Duc Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contact">
            <div class="container">
                <div class="menu-top">
                    <div class="col-md-4 menu-left animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                        <h3>Contact</h3>
                        <label><i class="glyphicon glyphicon-menu-up"></i></label>
                        <span>Liên hệ với chúng tôi để có những trải nghiệm tốt nhất!</span>
                    </div>
                    <div class="col-md-8 menu-right animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
                        <p>Phục vụ 24/7 với chất lượng tốt nhất, giá cả cực ưng, để trải nghiệm và tận hưởng ngay hôm nay
                            vui lòng liên hệ với chúng tôi theo địa chỉ dưới đây!</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="contact-top">
                    <div class="col-md-5 contact-map">
                        <h5>Google Map</h5>
                        <div class="map animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.620676860502!2d105.79445058804643!3d21.04785843767368!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab24d3f155ed%3A0x62c13b3a9b880742!2zSOG7jWMgVmnhu4duIEvhu7kgVGh14bqtdCBRdcOibiBT4bux!5e0!3m2!1svi!2s!4v1506675225148" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

                        </div>
                        <div class="address">
                            <h4>Address</h4>
                            <p> HAL's FOOD</p>
                            <p>236-Hoàng Quốc Việt-Cầu Giấy-Hà Nội </p>
                            <p>ph : +8906715513</p>
                            <p>Email : <a href="mailto:example@gmail.com">hoanghung1904@gmail.com</a></p>
                        </div>
                    </div>
                    <div class="col-md-7 contact-para animated wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="500ms">
                        <h5>Contact Form</h5>
                        <form>
                            <div class="grid-contact">
                                <div class="col-md-6 contact-grid">
                                    <p class="your-para">Name </p>
                                    <input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = '';
                                            }">
                                </div>
                                <div class="col-md-6 contact-grid">
                                    <p class="your-para">Phone number</p>	
                                    <input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = '';
                                            }">
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="grid-contact">
                                <div class="col-md-6 contact-grid">
                                    <p class="your-para">Email</p>
                                    <input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = '';
                                            }">
                                </div>
                                <div class="col-md-6 contact-grid">
                                    <p class="your-para">Password</p>
                                    <input type="Password" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = '';
                                            }">
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <p class="your-para msg-para">MESSAGE</p>
                            <textarea cols="77" rows="6" value=" " onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }"></textarea>
                            <div class="send">
                                <input type="submit" value="Send " >
                            </div>
                        </form>
                    </div>	

                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </body>
</html>
