/*
================================================================================
表结构代码:TB_TAXAA
表结构名称:代征代缴税额标准表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TAXAA;
drop index AK_TB_TAXAA;
drop table TB_TAXAA;
create table TB_TAXAA  (
   TAXAA_ID             INTEGER                         not null,  /*代征代缴税额标准ID  */
   TAXAA001             INTEGER                         not null,  /*公司ID           */
   TAXAA002             INTEGER                         not null,  /*营运组织ID       */
   TAXAA003             INTEGER                         not null,  /*摊位ID           */
   TAXAA004             INTEGER                         not null,  /*合同ID           */
   TAXAA005             INTEGER                         not null,  /*客商ID           */
   TAXAA006             DATE                            not null,  /*应收款日期       */
   TAXAA007             DATE                            not null,  /*税额起日         */
   TAXAA008             DATE                            not null,  /*税额止日         */
   TAXAA009             NUMBER(12,2)                    not null,  /*发票金额         */
   TAXAA010             NUMBER(12,2)                    not null,  /*代征税额         */
   TAXAA011             NUMBER(12,2)                    not null,  /*超额税率(%)      */
   TAXAA012             INTEGER,                                   /*费用单ID         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_TAXAA primary key (TAXAA_ID)
);
create unique index AK_TB_TAXAA on TB_TAXAA (TAXAA002,TAXAA003,TAXAA007);
create sequence SEQ_TB_TAXAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAA to public;
grant index  on TB_TAXAA to public;
grant update on TB_TAXAA to public; 
grant delete on TB_TAXAA to public;  
grant insert on TB_TAXAA to public; 
grant select on SEQ_TB_TAXAA to public;   