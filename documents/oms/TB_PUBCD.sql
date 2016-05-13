/*
20130816 add by gaoxl for 红星：add PUBCD039~PUBCD040
*/


/*
================================================================================
表结构代码:TB_PUBCD
表结构名称:员工表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBCD;
drop index AK_TB_PUBCD;
drop table TB_PUBCD;
create table TB_PUBCD  (
   PUBCD_ID             INTEGER                         not null,  /*员工ID             */
   PUBCD001             VARCHAR2(12)                    not null,  /*员工编号           */
   PUBCD002             VARCHAR2(12)                    not null,  /*员工帐号           */
   PUBCD003             VARCHAR2(30)                    not null,  /*员工中文名         */
   PUBCD004             VARCHAR2(30),                              /*员工英文名         */ 20120921 modi by gaoxl for 14778:由not null改为可空
   PUBCD005             INTEGER                         not null,  /*所属部门ID         */
   PUBCD006             VARCHAR2(30),                              /*职称               */
   PUBCD007             VARCHAR2(60),                              /*E_Mail             */
   PUBCD008             VARCHAR2(30),                              /*电话               */
   PUBCD009             VARCHAR2(30),                              /*手机               */
   PUBCD010             VARCHAR2(255),                             /*备注               */
   PUBCD011             date，                                      /*出生日期           */
   PUBCD012             varchar2(1) ,                              /*性别               */
   PUBCD013             varchar2(60),                              /*通讯地址           */
   PUBCD014             integer,                                   /*邮编               */
   PUBCD015             varchar2(30),                              /*传真               */
   PUBCD016             varchar2(30),                              /*家庭电话           */
   PUBCD017             varchar2(60),                              /*家庭地址           */
   PUBCD018             varchar2(100),                             /*其他联系方式       */
   PUBCD019             varchar2(1),                               /*在职状态           */ 1.在职 0。离职
   PUBCD020             varchar2(1),                               /*用户类型           */ 1:OA用户2:ERP用户3:共用4:其他
   PUBCD021             INTEGER     ,                              /*工种ID             */--add by xiechun 20110421
   PUBCD022             DATE,                                      /*上班打卡时间        */ 20120417 add by gaoxl for 12345
   PUBCD023             DATE,                                      /*下班打卡时间        */ 20120417 add by gaoxl for 12345
   PUBCD024             INTEGER,                                   /*所属展位号ID        */   20120417 add by gaoxl for 12345  
   PUBCD025             DATE,                                      /*入职时间            */ 20120905 add by shizhan for 14379
   PUBCD026             varchar2(18),                              /*身份证号码          */ 20120905 add by shizhan for 14379
   PUBCD027             VARCHAR2(10),                              /*政治面貌            */ 20120905 add by shizhan for 14379
   PUBCD028             varchar2(1),                               /*婚姻状况            */ 20120905 add by shizhan for 14379
   PUBCD029             DATE,                                      /*转正时间            */ 20120905 add by shizhan for 14379
   PUBCD030             varchar2(30),                              /*民族                */ 20120905 add by shizhan for 14379
   PUBCD031             varchar2(18),                              /*银行账号            */ 20120905 add by shizhan for 14379
   PUBCD032             DATE,                                      /*离职时间            */ 20120905 add by shizhan for 14379
   PUBCD033             varchar2(10),                              /*指纹编号            */ 20120905 add by shizhan for 14379
   PUBCD034             varchar2(30),                              /*籍贯                */ 20120905 add by shizhan for 14379
   PUBCD035             INTEGER,                                   /*离职原因            */ 20120905 add by shizhan for 14379
   PUBCD036             varchar2(255),                             /*档案内容            */ 20120905 add by shizhan for 14379
   PUBCD037             varchar2(255),                             /*照片                */ 20120905 add by shizhan for 14379
   PUBCD038             varchar2(30),                              /*班组                */ 20120920 add by shizhan for 14379
   PUBCD042             varchar2(1),                               /*类型：1内部；2、外部*/ 
   PUBCD043             INTEGER,                                   /*商场ID              */      
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */                    
   constraint PK_TB_PUBCD primary key (PUBCD_ID)
);
create unique index AK_TB_PUBCD on TB_PUBCD (PUBCD001);
create sequence SEQ_TB_PUBCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCD to public;
grant index  on TB_PUBCD to public;
grant update on TB_PUBCD to public; 
grant delete on TB_PUBCD to public;  
grant insert on TB_PUBCD to public; 
grant select on SEQ_TB_PUBCD to public;   