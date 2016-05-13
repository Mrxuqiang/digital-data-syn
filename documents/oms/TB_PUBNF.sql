/*
================================================================================
表结构代码:TB_PUBNF
表结构名称:银行账号
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBNF;
drop index AK_TB_PUBNF;
drop table TB_PUBNF;
create table TB_PUBNF  (
   PUBNF_ID             INTEGER                         not null,  /*账号ID                   */
   PUBNF001             VARCHAR2(4)                     not null,  /*账户编号               */
   PUBNF002             VARCHAR2(30)                    not null,  /*银行账号             */
   PUBNF003             VARCHAR2(60)                    not null,  /*开户银行名称           */
   PUBNF004             VARCHAR2(10),                              /*助记码                     */
   PUBNF005             DATE,                                      /*开户日期                 */
   PUBNF006             VARCHAR2(100),                             /*所在地               */
   PUBNF007             VARCHAR2(1)                     not null,  /*账户标志                */
   PUBNF008             VARCHAR2(10),                              /*预留字段               */
   PUBNF009             VARCHAR2(1)                     not null,  /*账户状态                 */
   PUBNF010             VARCHAR2(1)                     not null,  /*分类                     */
   PUBNF011             INTEGER,                                   /*结算中心               */
   PUBNF012             INTEGER,                                   /*内部账户                   */
   PUBNF013             INTEGER                         not null,  /*币种                       */
   PUBNF014             VARCHAR2(1)                     not null,  /*总分属性               */
   PUBNF015             INTEGER                         not null , /*公司                     */
   PUBNF016             VARCHAR2(1)                     not null,  /*网银开通状态               */
   PUBNF017             VARCHAR2(1)                     not null,  /*是否自动回拨                */
   PUBNF018             VARCHAR2(255),                             /*备注                 */
   PUBNF019             VARCHAR2(20),                              /*联系人                 */
   PUBNF020             VARCHAR2(30),                              /*电话                       */
   PUBNF021             VARCHAR2(1)                     not null,  /*封存标志                 */
   PUBNF022             VARCHAR2(1)                     not null,  /*最低限额控制         */
   PUBNF023             NUMBER(16,2),                              /*最低限额                */
   PUBNF024             VARCHAR2(1),                               /*最低限额控制方式         */
   PUBNF025             VARCHAR2(1) ,                              /*最高限额控制             */
   PUBNF026             NUMBER(16,2),                              /*最高限额                 */
   PUBNF027             VARCHAR2(1)                     not null,  /*最高限额控制方式       */
   PUBNF028             NUMBER(16,2),                              /*原币期初余额               */
   PUBNF029             NUMBER(16,2),                              /*本币期初余额               */
   PUBNF030             INTEGER                         not null , /*营运组织id 20110717 modi by 会计科目ID -->营运组织id           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_PUBNF primary key (PUBNF_ID)
);
create unique index AK_TB_PUBNF on TB_PUBNF (PUBNF001,PUBNF002);
create sequence SEQ_TB_PUBNF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNF to public;
grant index  on TB_PUBNF to public;
grant update on TB_PUBNF to public; 
grant delete on TB_PUBNF to public;  
grant insert on TB_PUBNF to public; 
grant select on SEQ_TB_PUBNF to public;   