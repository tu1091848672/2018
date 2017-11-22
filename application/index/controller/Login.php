<?php
namespace app\index\controller;
use think\View;
use think\Controller;
use app\index\model\User;
class Login extends Controller{
     public  function  index(){

         return $this->fetch('index');
     }
    public  function  index2(){

         return $this->fetch('index2');
    }
    public  function  login($user_name='',$user_passwd='',$code=''){
        $user = user::get([
            'user_name' => $user_name,
            'user_passwd' => md5($user_passwd)
        ]);
        $captcha = new \think\captcha\Captcha();
        if(!$captcha->check($code)) {
            $this->error('验证码错误');
        }
        else {
            if($user ){
                echo '登录成功'.$user_name;
            }else{
                return $this->error('登录失败');
            }
           // $this->success('验证码正确');

        }


    }



}