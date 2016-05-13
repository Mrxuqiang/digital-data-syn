、/*
================================================================================
表结构代码:TB_SALBO
表结构名称:销退单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALBO;
drop index AK_TB_SALBO;
drop table TB_SALBO;
create table TB_SALBO  (
   SALBO_ID             INTEGER                         not null,  /*销退单ID         */
   SALBO001             INTEGER                         not null,  /*单别ID           */
   SALBO002             VARCHAR2(30)                    not null,  /*销退单号         */
   SALBO003             DATE                            not null,  /*销退日期         */
   SALBO004             INTEGER                         not null,  /*公司ID           */
   SALBO005             INTEGER                         not null,  /*销退组织ID       */
   SALBO006             INTEGER                         not null,  /*销售单ID         */
   SALBO007             VARCHAR2(1)                     not null,  /*销退类型         */
   SALBO008             INTEGER,                                   /*退款凭证种类ID   */
   SALBO009             NUMBER(12),                                /*退款凭证号       */
   SALBO010             INTEGER                       ,  /*摊位ID           */
   SALBO011             VARCHAR2(1)                  ,  /*摊位类型         */
   SALBO012             INTEGER                        ,  /*租赁合同ID       */
   SALBO013             INTEGER                        ,  /*租赁商户ID       */
   SALBO014             INTEGER                         not null,  /*主品牌ID         */
   SALBO015             INTEGER                        ,  /*经营小类ID       */
   SALBO016             INTEGER                         not null,  /*客户ID           */
   SALBO017             INTEGER                         not null,  /*客户合同号ID     */
   SALBO018             VARCHAR2(1)                     not null,  /*结算方式         */
   SALBO019             VARCHAR2(30),                              /*顾客姓名         */
   SALBO020             VARCHAR2(30),                              /*联系电话         */
   SALBO021             INTEGER,                                   /*证件类型ID       */
   SALBO022             VARCHAR2(30),                              /*证件号码         */
   SALBO023             NUMBER(30),                                /*会员卡号         */
   SALBO024             VARCHAR2(1),                               /*是否参加促销     */
   SALBO025             VARCHAR2(1),                               /*是否指定采购     */
   SALBO026             INTEGER,                                   /*导购员           */
   SALBO027             INTEGER,                                   /*折扣人           */
   SALBO028             VARCHAR2(255),                             /*备注             */
   SALBO029             VARCHAR2(25),                              /*机号             */
   SALBO030             VARCHAR2(25),                              /*交易序号         */
   SALBO031             INTEGER,                                   /*退货原因ID       */
   SALBO032             INTEGER,                                   /*录入人ID         */
   SALBO033             DATE,                                      /*录入日期         */
   SALBO034             INTEGER,                                   /*审核人ID         */
   SALBO035             DATE,                                      /*审核日期         */
   SALBO036             VARCHAR2(1)                     not null,  /*审核状态         */
   SALBO037             VARCHAR2(1),                               /*是否签核         */
   SALBO038             VARCHAR2(30),                              /*签核单号         */
   SALBO039             VARCHAR2(1),                               /*签核码           */
   SALBO040             Integer,                                   /*应收单id         */
   SALBO041             VARCHAR2(30),                              /*商户凭证号       */--2010/3/24 add by ouwx
   SALBO042             NUMBER(12,2),                              /*现金抵券金额*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALBO primary key (SALBO_ID)
);
create unique index AK_TB_SALBO on TB_SALBO (SALBO002,SALBO005);
create sequence SEQ_TB_SALBO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALBO to public;
grant index  on TB_SALBO to public;
grant update on TB_SALBO to public; 
grant delete on TB_SALBO to public;  
grant insert on TB_SALBO to public; 
grant select on SEQ_TB_SALBO to public;   