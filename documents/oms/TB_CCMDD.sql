/*
================================================================================
表结构代码:TB_CCMDD
表结构名称:券种表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDD;
drop index AK_TB_CCMDD;
drop table TB_CCMDD;
create table TB_CCMDD  (
   CCMDD_ID             INTEGER                         not null,  /*券种ID              */
   CCMDD001             VARCHAR2(4)                     not null,  /*券种编号            */
   CCMDD002             VARCHAR2(30)                    not null,  /*券种名称            */
   CCMDD003             INTEGER                         not null,  /*券分类ID            */
   CCMDD004             VARCHAR2(1)                     not null,  /*券类型改为券面介质              */
   CCMDD005             DATE                            not null,  /*有效起日            */
   CCMDD006             DATE                            not null,  /*有效止日            */
   CCMDD007             INTEGER,                                   /*扣券等级ID          */
   CCMDD008             NUMBER(5),                                 /*扣券优先序号        */
   CCMDD009             INTEGER,                                   /*最小面额单位ID      */
   CCMDD010             VARCHAR2(1),                               /*现金满额收券        */
   CCMDD011             NUMBER(12,2),                              /*现金额              */
   CCMDD012             NUMBER(12,2),                              /*收券额              */
   CCMDD013             VARCHAR2(1),                               /*不可与其它券一起使用*/
   CCMDD014             VARCHAR2(1),                               /*促销可返券          */
   CCMDD015             VARCHAR2(1),                               /*可积分              */
   CCMDD016             VARCHAR2(1),                               /*未到期券可返款      */
   CCMDD017             VARCHAR2(255),                             /*备注                */
   CCMDD018             INTEGER,                                   /*录入人ID            */
   CCMDD019             DATE,                                      /*录入日期            */
   CCMDD020             INTEGER,                                   /*审核人ID            */
   CCMDD021             DATE,                                      /*审核日期            */
   CCMDD022             VARCHAR2(1),                               /*审核状态            */
   CCMDD023             VARCHAR2(1),                               /*是否签核            */
   CCMDD024             VARCHAR2(30),                              /*签核单号            */
   CCMDD025             VARCHAR2(1),                               /*签核码             */
   CCMDD027             VARCHAR2(1),                               /*券不返款            */ 
   CCMDD028             NUMBER(22,2),                              /*预存券折扣率(%)     */ -- ADD OUWX 100606
   CCMDD029             VARCHAR2(1),                               /*券不开票            */ 
   CCMDD030             VARCHAR2(1),                               /*券类型(1.现金券，2.提货券)*/ 
   CCMDD031             INTEGER,                                   /*券面额ID              */
   CCMDD032             VARCHAR2(1),                               /*提货券视同现金使用*/ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDD primary key (CCMDD_ID)
);
create unique index AK_TB_CCMDD on TB_CCMDD (CCMDD001);
create sequence SEQ_TB_CCMDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDD to public;
grant index  on TB_CCMDD to public;
grant update on TB_CCMDD to public; 
grant delete on TB_CCMDD to public;  
grant insert on TB_CCMDD to public; 
grant select on SEQ_TB_CCMDD to public;   