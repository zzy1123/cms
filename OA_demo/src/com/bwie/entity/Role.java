package com.bwie.entity;

public class Role {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_role.rid
     *
     * @mbggenerated Mon Apr 02 11:29:22 GMT+08:00 2018
     */
    private Integer rid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_role.rname
     *
     * @mbggenerated Mon Apr 02 11:29:22 GMT+08:00 2018
     */
    private String rname;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_role.rid
     *
     * @return the value of t_role.rid
     *
     * @mbggenerated Mon Apr 02 11:29:22 GMT+08:00 2018
     */
    public Integer getRid() {
        return rid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_role.rid
     *
     * @param rid the value for t_role.rid
     *
     * @mbggenerated Mon Apr 02 11:29:22 GMT+08:00 2018
     */
    public void setRid(Integer rid) {
        this.rid = rid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_role.rname
     *
     * @return the value of t_role.rname
     *
     * @mbggenerated Mon Apr 02 11:29:22 GMT+08:00 2018
     */
    public String getRname() {
        return rname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_role.rname
     *
     * @param rname the value for t_role.rname
     *
     * @mbggenerated Mon Apr 02 11:29:22 GMT+08:00 2018
     */
    public void setRname(String rname) {
        this.rname = rname;
    }
}