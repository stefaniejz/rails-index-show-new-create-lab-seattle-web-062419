class CouponsController < ApplicationController
    def index
      @coupons = Coupon.all
    end

    def new
    end

    def show
      puts params
      @coupon= Coupon.find(params[:id])
    end

    def create
      
      coupon= Coupon.create(coupon_code:params["coupon"]["coupon_code"],store:params["coupon"]["store"])
      redirect_to coupon_path(coupon.id)
    end
  end
  