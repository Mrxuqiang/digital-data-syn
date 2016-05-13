
/*
================================================================================
表结构代码:TB_PUBDC
表结构名称:营运组织商业实体表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBDC;
drop index AK_TB_PUBDC;
drop table TB_PUBDC;
create table TB_PUBDC  (
   PUBDC_ID             INTEGER                         not null,  /*营运组织商业实体表ID */
   PUBDC001             INTEGER                         not null,  /*营运组织           */
   PUBDC002             VARCHAR2(30)                    not null,  /*SAP公司代码         */
   PUBDC003             VARCHAR2(30)                    not null,  /*SAP商业实体         */
   PUBDC004             VARCHAR2(30)                            ,  /*出租方名称*/
   PUBDC005             VARCHAR2(60)                            ,  /*出租方注册地址	*/
   PUBDC006             VARCHAR2(30)                            ,  /*出租方法定代表人	 */
   PUBDC007             VARCHAR2(30)                            ,  /*出租方账户名称			  */
   PUBDC008             VARCHAR2(30)                            ,  /*出租方开户行名称 */
   PUBDC009             VARCHAR2(30)                            ,  /*出租方开户行账号					  */
   PUBDC010             VARCHAR2(30)                            ,  /*出租方联系人名称 */
   PUBDC011             VARCHAR2(60)                            ,  /*出租方联系地址 */
   PUBDC012             VARCHAR2(30)                            ,  /*商场名称             */
   PUBDC013             VARCHAR2(30)                            ,  /*出租方联系电话  */ 
   PUBDC014             VARCHAR2(30)                            ,  /*红星美凯龙账户名称 */ 
   PUBDC015             VARCHAR2(30)                            ,  /*红星美凯龙开户行名称                               */ 
   PUBDC016             VARCHAR2(30)                            ,  /*红星美凯龙开户行账户     */ 
   PUBDC017             VARCHAR2(60)                            ,  /*红星美凯龙联系地址       */
   PUBDC018             VARCHAR2(30)                            ,  /*商场办公总机       */
   PUBDC019             VARCHAR2(30)                             ,  /*预算单位代码        */   
   PUBDC020             INTEGER,                                   /*合同类型         */
   PUBDC026             VARCHAR2(100)                             ,  /*出租方的展位        */   
   PUBDC027             VARCHAR2(100)                             ,  /*商场简称        */   
   PUBDC023             INTEGER,                                   /*特殊营销租金ID         */
   PUBDC024             INTEGER,                                   /*特殊营销活动优惠(加)         */
   PUBDC028             INTEGER                                 ,  /* 特殊营销活动优惠(减)  */
   PUBDC025             INTEGER,                                   /*活动优惠租金(加）          */ 
   PUBDC029             INTEGER                                 ,  /* 活动优惠租金（减） */
   PUBDC030             NUMBER(16,2)                            ,  /* 活动租金拆分比例(%)    */
   PUBDC032             INTEGER                                 ,  /* 活动优惠管理费（加）  */
   PUBDC033             INTEGER                                 ,  /* 活动优惠管理费（减） */
   PUBDC031             NUMBER(16,2)                            ,  /* 活动管理费拆分比例(%)      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_PUBDC primary key (PUBDC_ID)
);
create unique index AK_TB_PUBDC on TB_PUBDC (PUBDC001,PUBDC002,PUBDC003);
create sequence SEQ_TB_PUBDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBDC to public;
grant index  on TB_PUBDC to public;
grant update on TB_PUBDC to public; 
grant delete on TB_PUBDC to public;  
grant insert on TB_PUBDC to public; 
grant select on SEQ_TB_PUBDC to public;   
