<%@ page language="java" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<title>Payment details</title>
</head>
<body>
	<form method="post" action="pgredirect" accept-charset=utf-8>
    <div class="container register">
        <div class="row">
            <div class="col-md-3 register-left">
                <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                <h3>Welcome</h3>
                <p>You are 30 seconds away from earning your own money!</p>
            </div>
            <div class="col-md-9 register-right">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <h3 class="register-heading">Welcome to Paytm Payment</h3>
                        <div class="row register-form">
                            <div class="col-md-10">
                            
                            	
                            	<div class="form-group">
                                   <label>Mobile Number :  <input id="mobile" tabindex="1" maxlength="20" size="20"
                                           name="mobile" autocomplete="off" class="form-control" ></label>
                                </div>
                                <div class="form-group">
                                   <label>Email :  <input id="email" tabindex="1" maxlength="50" size="50"
                                           name="email" autocomplete="off" class="form-control" ></label>
                                </div>
                                <div class="form-group">
                                     <label>Order Id :  <input id="ORDER_ID" tabindex="1" maxlength="20" size="20"
                                           name="ORDER_ID" autocomplete="off" class="form-control" ></label>
                                </div>
                                <div class="form-group">
                                     <label>Customer Id : <input type="text" class="form-control" placeholder="Customer ID" value=""
                                           name="CUST_ID"/></label>
                                </div>
                                <div class="form-group">
                                     <label>Industry Type : <input type="text" class="form-control" placeholder="INDUSTRY_TYPE_ID" value=""
                                           name="INDUSTRY_TYPE_ID"/></label>
                                </div>
                                <div class="form-group">
                                     <label>Channel Id : <input type="text" class="form-control" placeholder="Channel" value=""
                                           name="CHANNEL_ID"/></label>
                                </div>
                                <div class="form-group">
                                     <label>Amount : <input type="text" class="form-control" placeholder="Amount" value=""
                                           name="TXN_AMOUNT"/></label>
                                </div>
                               
                                <button type="submit" class="btnRegister" style="align : center">Pay with Paytm</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</form>
</body>
</html>