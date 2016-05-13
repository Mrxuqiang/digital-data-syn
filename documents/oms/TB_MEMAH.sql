/*
================================================================================
表结构代码:TB_MEMAH
表结构名称:会员表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMAH;
drop index AK_TB_MEMAH;
drop table TB_MEMAH;
create table TB_MEMAH  (
   MEMAH_ID             INTEGER                         not null,  /*会员ID             */
   MEMAH001             VARCHAR2(30)                    not null,  /*会员编号           */
   MEMAH002             VARCHAR2(30)                    not null,  /*会员名称           */
   MEMAH003             INTEGER                         not null,  /*证件类型ID         */
   MEMAH004             VARCHAR2(30)                    not null,  /*证件号码           */
   MEMAH005             DATE                            not null,  /*出生日期           */
   MEMAH006             VARCHAR2(1)                     not null,  /*性别               */
   MEMAH007             VARCHAR2(1)                     not null,  /*婚姻               */
   MEMAH008             INTEGER,                                   /*学历ID             */
   MEMAH009             INTEGER,                                   /*职业ID             */
   MEMAH010             INTEGER,                                   /*收入登级ID         */
   MEMAH011             INTEGER,                                   /*兴趣ID             */
   MEMAH012             VARCHAR2(10),                              /*家庭邮编           */
   MEMAH013             VARCHAR2(255),                             /*家庭地址           */
   MEMAH014             VARCHAR2(60),                              /*单位名称           */
   MEMAH015             VARCHAR2(10),                              /*单位邮编           */
   MEMAH016             VARCHAR2(255),                             /*单位地址           */
   MEMAH017             VARCHAR2(10),                              /*邮寄邮编           */
   MEMAH018             VARCHAR2(255),                             /*邮寄地址           */
   MEMAH019             INTEGER                         not null,  /*地市ID             */
   MEMAH020             INTEGER                         not null,  /*县市ID             */
   MEMAH021             VARCHAR2(30),                              /*电话               */
   MEMAH022             VARCHAR2(30),                              /*手机               */
   MEMAH023             VARCHAR2(60),                              /*电子邮件           */
   MEMAH024             INTEGER                         not null,  /*会员分类ID         */
   MEMAH025             INTEGER,                                   /*会员等级ID         */ # modify ouwx 作废 
   MEMAH026             INTEGER                         not null,  /*申请来源ID         */
   MEMAH027             INTEGER                         not null,  /*登记营运组织ID     */
   MEMAH028             INTEGER                         not null,  /*登记人ID           */
   MEMAH029             DATE                            not null,  /*登记日期           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMAH primary key (MEMAH_ID)
);
create unique index AK_TB_MEMAH on TB_MEMAH (MEMAH001);
create sequence SEQ_TB_MEMAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAH to public;
grant index  on TB_MEMAH to public;
grant update on TB_MEMAH to public; 
grant delete on TB_MEMAH to public;  
grant insert on TB_MEMAH to public; 
grant select on SEQ_TB_MEMAH to public;   