/*
================================================================================
表结构代码:TB_GLDAD
表结构名称:凭证表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAD;
drop index AK_TB_GLDAD;
drop table TB_GLDAD;
create table TB_GLDAD  (
   GLDAD_ID             INTEGER                         not null,   /*凭证ID                 */
   GLDAD001             INTEGER                         not null,   /*主体账簿ID             */
   GLDAD002             INTEGER                         not null,   /*会计主体ID             */
   GLDAD003             INTEGER                         not null,   /*公司ID                 */
   GLDAD004             INTEGER ,                                   /*凭证类型ID             */
   GLDAD005             INTEGER ,                                   /*凭证号                 */
   GLDAD006             DATE,                                       /*单据日期               */
   GLDAD007             NUMBER(2),                                  /*附单据数               */
   GLDAD008             NUMBER(16,2),                               /*借方合计               */
   GLDAD009             NUMBER(16,2),                               /*贷方合计               */
   GLDAD010             DATE                           not null,    /*制单日期               */
   GLDAD011             INTEGER                        not null,    /*制单人                 */
   GLDAD012             DATE,                                       /*签字日期               */
   GLDAD013             INTEGER,                                    /*签字人                 */
   GLDAD014             VARCHAR2(1)                    not null,    /*签字码                 */
   GLDAD015             DATE,                                       /*审核日期               */
   GLDAD016             INTEGER,                                    /*审核人                 */
   GLDAD017             VARCHAR2(1)                    not null,    /*审核码                 */
   GLDAD018             DATE,                                       /*记帐日期               */
   GLDAD019             INTEGER ,                                   /*记帐人                 */
   GLDAD020             VARCHAR2(1)                    not null,    /*记帐码                 */
   GLDAD021             VARCHAR2(255),                              /*备注                   */
   GLDAD022             VARCHAR2(1)                   not null,     /*是否暂存               */
   GLDAD023             VARCHAR2(1)                   not null,     /*来源                   */
   GLDAD024             VARCHAR2(1)                   not null,     /*内部折算状态           */
   GLDAD025             INTEGER,                                    /*内部折算来源凭证号     */
   GLDAD026             VARCHAR2(1)                    not null,     /*外部折算状态           */
   GLDAD027             INTEGER,                                   /*外部折算来源凭证号     */  
   GLDAD028             VARCHAR2(1)                    not null,    /*标错                   */ 
   GLDAD029             NUMBER(4),                                 /*会计年度                  */ 
   GLDAD030             NUMBER(2),                                 /*会计期间                   */   
   GLDAD031             INTEGER,                                   /*来源核算账套ID                   */                                                                                        
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER(1),                                  /*资料状态               */
   constraint PK_TB_GLDAD primary key (GLDAD_ID)
);
create unique index AK_TB_GLDAD on TB_GLDAD (GLDAD001,GLDAD002,GLDAD004,GLDAD005,GLDAD029,GLDAD030);
create sequence SEQ_TB_GLDAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAD to public;
grant index  on TB_GLDAD to public;
grant update on TB_GLDAD to public; 
grant delete on TB_GLDAD to public;  
grant insert on TB_GLDAD to public; 
grant select on SEQ_TB_GLDAD to public;   


