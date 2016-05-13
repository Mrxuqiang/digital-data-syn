/*
================================================================================
表结构代码:TB_SALHG
表结构名称:交款单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHG;
drop index AK_TB_SALHG;
drop table TB_SALHG;
create table TB_SALHG  (
   SALHG_ID             INTEGER                         not null,  /*交款单ID         */
   SALHG001             INTEGER                         not null,  /*单别             */
   SALHG002             VARCHAR2(30)                    not null,  /*交款单号         */
   SALHG003             DATE                            not null,  /*交款日期         */
   SALHG004             VARCHAR2(1)                     not null,  /*交款类型         */
   SALHG005             INTEGER                         not null,  /*销售单ID         */
   SALHG006             INTEGER,                                   /*备用             */
   SALHG007             NUMBER(30),                                /*备用             */
   SALHG008             INTEGER                         not null,  /*收银员ID         */
   SALHG009             VARCHAR2(255),                             /*备注             */
   SALHG010             NUMBER(12,2)                    not null,  /*应交款金额       */
   SALHG011             NUMBER(12,2),                              /*已交款金额       */
   SALHG012             NUMBER(12,2)                    not null,  /*应交款余额       */
   SALHG013             NUMBER(12,2)                    not null,  /*本次交款金额     */
   SALHG014             NUMBER(12,2),                              /*溢收金额         */
   SALHG015             NUMBER(12,0),                              /*备用             */
   SALHG016             VARCHAR2(30),                   not null,  /*销售单号         */
   SALHG017             NUMBER(12,2),                              /*备用             */
   SALHG018             NUMBER(12,2),                              /*备用             */
   SALHG019             NUMBER(12,2),                              /*备用             */
   SALHG020             VARCHAR2(1),                               /*备用             */  --update by hansf 收款方式 1  自收银 2 代收银
   SALHG021             INTEGER,                                   /*备用             */
   SALHG022             INTEGER,                                   /*备用             */
   SALHG023             INTEGER                        not null,   /*营运组织ID       */
   SALHG024             VARCHAR2(1),                               /*备用*/  --update by hansf 交款单类型 1.订金 2.补交订金 3 尾款                                 
   SALHG025             VARCHAR2(1),                               /*审核状态*/                                   
   SALHG026             VARCHAR2(1),                               /*备用*/                                   
   SALHG027             VARCHAR2(1),                               /*备用 */              
   SALHG028             INTEGER,                                   /*审核人           */--20110325 modify by xiechun                                   
   SALHG029             DATE,                                      /*审核时间         */
   SALHG030             NUMBER(12,2),                              /*应交定金         */--20110721 add by xiechun
   SALHG031             VARCHAR2(1),                               /*是否立账         */ --20110909 add by gaoxl   
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALHG primary key (SALHG_ID)
);
create unique index AK_TB_SALHG on TB_SALHG (SALHG002,SALHG023);
create sequence SEQ_TB_SALHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHG to public;
grant index  on TB_SALHG to public;
grant update on TB_SALHG to public; 
grant delete on TB_SALHG to public;  
grant insert on TB_SALHG to public; 
grant select on SEQ_TB_SALHG to public;   