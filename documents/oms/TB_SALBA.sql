/*
================================================================================
表结构代码:TB_SALBA
表结构名称:销售订单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALBA;
drop index AK_TB_SALBA;
drop table TB_SALBA;
create table TB_SALBA  (
   SALBA_ID             INTEGER                         not null,  /*销售订单ID       */
   SALBA001             INTEGER                         not null,  /*单别ID           */
   SALBA002             VARCHAR2(30)                    not null,  /*订单号码         */
   SALBA003             DATE                            not null,  /*订单日期         */
   SALBA004             INTEGER                         not null,  /*公司ID           */
   SALBA005             INTEGER                         not null,  /*销售组织ID       */
   SALBA006             VARCHAR2(1)                     not null,  /*销售类型         */
   SALBA007             VARCHAR2(1)                     not null,  /*单据来源         */
   SALBA008             INTEGER,                                   /*销售凭证种类ID   */
   SALBA009             NUMBER(12),                                /*销售凭证号       */
   SALBA010             INTEGER                         ,  /*摊位ID           */
   SALBA011             VARCHAR2(1)                    ,  /*摊位类型         */
   SALBA012             INTEGER                       ,  /*租赁合同ID       */
   SALBA013             INTEGER                       ,  /*租赁商户ID       */
   SALBA014             INTEGER                         not null,  /*主品牌ID         */
   SALBA015             INTEGER                         ,  /*经营小类ID       */
   SALBA016             INTEGER                         not null,  /*客户ID           */
   SALBA017             INTEGER,                                   /*客户协议ID       */
   SALBA018             VARCHAR2(1)                     not null,  /*结算方式         */
   SALBA019             VARCHAR2(1)                     not null,  /*提货方式         */
   SALBA020             DATE                            not null,  /*提货日期         */
   SALBA021             INTEGER                         not null,  /*送货客户ID       */
   SALBA022             VARCHAR2(255),                             /*送货地址         */
   SALBA023             VARCHAR2(30),                              /*顾客姓名         */
   SALBA024             VARCHAR2(30),                              /*联系电话         */
   SALBA025             INTEGER,                                   /*导购员           */
   SALBA026             INTEGER,                                   /*折扣人           */
   SALBA027             INTEGER,                                   /*证件类型ID       */
   SALBA028             VARCHAR2(30),                              /*证件号码         */
   SALBA029             NUMBER(30),                                /*会员卡号         */
   SALBA030             VARCHAR2(1),                               /*是否参加促销     */
   SALBA031             VARCHAR2(1),                               /*是否指定采购     */
   SALBA032             VARCHAR2(1)                     not null,  /*结案状态         */
   SALBA033             VARCHAR2(255),                             /*备注             */
   SALBA034             INTEGER,                                   /*录入人ID         */
   SALBA035             DATE,                                      /*录入日期         */
   SALBA036             INTEGER,                                   /*审核人ID         */
   SALBA037             DATE,                                      /*审核日期         */
   SALBA038             VARCHAR2(1)                     not null,  /*审核状态         */
   SALBA039             VARCHAR2(1),                               /*是否签核         */
   SALBA040             VARCHAR2(30),                              /*签核单号         */
   SALBA041             VARCHAR2(1),                               /*签核码           */
   SALBA042             VARCHAR2(1),                               /*租赁促销层级     */
   SALBA043             VARCHAR2(1)           ,   /*跟踪状态  1未处理2已排车3 已送货4完成 def 1*/  --2009-01-27 add by hansf
   SALBA044             NUMBER(12,2) ,                          /*楼层*/  --2010-03-04 add by hansf
   SALBA045             VARCHAR2(1),                        /*是否有电梯  0 便是没有， 1表示有*/  
   SALBA046             VARCHAR2(30),                     /*手机号一*/	 
   SALBA047             VARCHAR2(30),                     /*手机号二*/	 
   SALBA048             INTEGER,                              /*排车次数*/        --2010-03-04 add by hansf
   SALBA049             NUMBER(12,2),                              /*整单折后金额*/        --2010-03-04 add by hansf
   SALBA050             VARCHAR2(1)  	,     /*销售库存*/
   SALBA051             NUMBER(22,2),                              /*已转销售金额*/  
   SALBA052             NUMBER(22,2),                              /*订单收款余额*/   
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALBA primary key (SALBA_ID)
);
create unique index AK_TB_SALBA on TB_SALBA (SALBA002,SALBA005);
create sequence SEQ_TB_SALBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBA to public;
grant index  on TB_SALBA to public;
grant update on TB_SALBA to public; 
grant delete on TB_SALBA to public;  
grant insert on TB_SALBA to public; 
grant select on SEQ_TB_SALBA to public;   