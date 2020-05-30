package com.nenu.service.impl;

import com.nenu.entity.SysUser;
import com.nenu.dao.SysUserDao;
import com.nenu.service.SysUserService;
import com.nenu.utils.Constants;
import com.nenu.utils.Convert;
import com.nenu.utils.StringUtils;
import com.nenu.utils.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (SysUser)表服务实现类
 */
@Service
public class SysUserServiceImpl implements SysUserService {
    @Autowired
    private SysUserDao sysUserDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public SysUser selectSysyUserById(Integer id) {
        return this.sysUserDao.selectUserById(id);
    }

    /**
     * 新增数据
     *
     * @param sysUser 实例对象
     * @return 受影响的行数
     */
    @Override
    public int insert(SysUser sysUser) {
        if (StringUtils.isBlank(sysUser.getPassword())) {
            sysUser.setPassword(Constants.DEFAULT_PASSWORD);
        }
        WebUtils.entryptPassword(sysUser);
        return sysUserDao.insert(sysUser);
    }

    /**
     * 修改数据
     *
     * @param sysUser 实例对象
     * @return 实例对象
     */
    @Override
    public int update(SysUser sysUser) {
        return this.sysUserDao.update(sysUser);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long id) {
        return this.sysUserDao.deleteById(id) > 0;
    }

    @Override
    public SysUser findSysUserByLoginName(String loginName) {
        SysUser sysUser = sysUserDao.findSysUserByLoginName(loginName);
        return sysUser;
    }

    @Override
    public List<SysUser> selectUserList(SysUser sysUser) {
        return sysUserDao.queryAll(sysUser);
    }

    @Override
    public int deleteSysUserByIds(String ids) {
        return sysUserDao.deleteByIds(Convert.toIntArray(ids));
    }

    @Override
    public Map register(SysUser user) {
        WebUtils.entryptPassword(user);
        user.setUserType("3");
        Map result = new HashMap();
        int rtn =sysUserDao.checkLoginName(user);
        if(rtn != 0){
            result.put("success",false);
            result.put("msg","登录账户已存在!!!");
        }else{
             rtn = sysUserDao.insert(user);
            if(rtn == 1){
                result.put("success",true);
                result.put("msg","注册成功");
            }else{
                result.put("success",false);
                result.put("msg","注册失败，请重试!!!");
            }
        }
        return result;
    }
}