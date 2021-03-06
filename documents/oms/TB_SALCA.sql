/*
================================================================================
表结构代码:TB_SALCA
表结构名称:交款单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALCA;
drop index AK_TB_SALCA;
drop table TB_SALCA;
create table TB_SALCA  (
   SALCA_ID             INTEGER                         not null,  /*交款单ID         */
   SALCA001             INTEGER                         not null,  /*单别             */
   SALCA002             VARCHAR2(30)                    not null,  /*交款单号         */
   SALCA003             DATE                            not null,  /*交款日期         */
   SALCA004             VARCHAR2(1)                     not null,  /*交款类型         */
   SALCA005             INTEGER                         not null,  /*冲销单ID         */
   SALCA006             INTEGER,                                   /*交款凭证种类ID   */
   SALCA007             NUMBER(30),                                /*交款凭证号       */
   SALCA008             INTEGER                         not null,  /*收银员ID         */
   SALCA009             VARCHAR2(255),                             /*备注             */
   SALCA010             NUMBER(12,2)                    not null,  /*交款金额         */
   SALCA011             NUMBER(12,2),                              /*折扣金额         */
   SALCA012             NUMBER(12,2)                    not null,  /*应交款金额       */
   SALCA013             NUMBER(12,2)                    not null,  /*实交款金额       */
   SALCA014             NUMBER(12,2),                              /*溢收金额         */
   SALCA015             NUMBER(12,0),                              /*本次积分         */
   SALCA016             VARCHAR2(30),                   not null,  /*冲销单号         */
   SALCA017             NUMBER(12,2),                              /*可返交款券金额   */
   SALCA018             NUMBER(12,2),                              /*可返累计券金额   */
   SALCA019             NUMBER(12,2),                              /*可送累计赠品额   */
   SALCA020             VARCHAR2(1),                               /*交易类型1.正常交易 2.订金转入 */
   SALCA021             INTEGER,                                   /*转入订金单号ID   */
   SALCA022             INTEGER,                                   /*预收待抵单ID     */
   SALCA023             INTEGER                        not null,   /*营运组织ID       */
   SALCA024             VARCHAR2(1),                               /*参与折扣促销促销 */
   SALCA025             VARCHAR2(1),                               /*参与交款返券促销 */
   SALCA026             VARCHAR2(1),                               /*参与累计返券促销 */
   SALCA027             VARCHAR2(1),                               /*参与累计送赠促销 */
   SALCA035             VARCHAR2(1),                               /*交款审核状态 */
   SALCA036             NUMBER(12,2)                            ,  /*交款直降金额     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALCA primary key (SALCA_ID,SALCA020)
);
create unique index AK_TB_SALCA on TB_SALCA (SALCA002,SALCA020,SALCA023);
create sequence SEQ_TB_SALCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCA to public;
grant index  on TB_SALCA to public;
grant update on TB_SALCA to public; 
grant delete on TB_SALCA to public;  
grant insert on TB_SALCA to public; 
grant select on SEQ_TB_SALCA to public;   