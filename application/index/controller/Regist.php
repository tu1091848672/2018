<?php
namespace app\index\controller;
use think\View;
use think\Controller;
use app\index\model\User;

class Regist extends  Controller
{
    public function index()
    {

        return $this->fetch('index');
    }

    public function regist()
    {
        $user = new User;
       $user->user_name = input('post.user_name');
        $user->user_sex = input('post.UserSex');
        $user->user_tel = input('post.UserTel');
        $user->user_email = input('post.UserEmail');
        $user->user_address = input('post.UserAddress');
        $user->user_birth = input('post.UserJoinTime');
        $user->user_passwd = input('post.UserPasswd');
        $user->user_signature = input('post.UserSignature');
        $user->user_hobby = input('post.UserHobby');
        $result = $this->validate(
            [
                'name' => $user->user_name,
                'email' => $user->user_email,
                'sex' => $user->user_sex,
                'tel' => $user->user_tel,
                'address' => $user->user_address,
                'birth' => $user->user_birth,
                'password' => $user->user_passwd,

            ],
            [
                'name' => 'require|max:10',
                'email' => 'email',
                'sex' => "require|'in:1,2,3'",
                'tel' => 'require|num',
                'address' => 'require',
                'birth' => 'require',
                'password' => 'require',
            ]);
        if (true !== $result) {
            $this->error($result);
        }
        if ($user->save()) {
            return $this->success('注册成功');
        } else {
            return $this->success('注册失败');
        }

    }
}