/*
================================================================================
表结构代码:TB_AWBBB
表结构名称:临时凭证表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AWBBB;
drop index AK_TB_AWBBB;
drop table TB_AWBBB;
create table TB_AWBBB  (
   AWBBB_ID             INTEGER                         not null,   /*临时凭证ID                 */
   AWBBB001             INTEGER                         not null,   /*主体账簿ID             */
   AWBBB002             INTEGER                         not null,   /*会计主体ID             */
   AWBBB003             INTEGER                         not null,   /*公司ID                 */
   AWBBB004             INTEGER ,                                   /*凭证类型ID             */
   AWBBB005             INTEGER ,                                   /*凭证号                 */
   AWBBB006             DATE,                                       /*单据日期               */
   AWBBB007             NUMBER(2),                                  /*附单据数               */
   AWBBB008             NUMBER(16,2),                               /*借方合计               */
   AWBBB009             NUMBER(16,2),                               /*贷方合计               */
   AWBBB010             DATE                           not null,    /*制单日期               */
   AWBBB011             INTEGER                        not null,    /*制单人                 */
   AWBBB012             DATE,                                       /*签字日期               */
   AWBBB013             INTEGER,                                    /*签字人                 */
   AWBBB014             VARCHAR2(1)                    not null,    /*签字码                 */
   AWBBB015             DATE,                                       /*审核日期               */
   AWBBB016             INTEGER,                                    /*审核人                 */
   AWBBB017             VARCHAR2(1)                    not null,    /*审核码                 */
   AWBBB018             DATE,                                       /*记帐日期               */
   AWBBB019             INTEGER ,                                   /*记帐人                 */
   AWBBB020             VARCHAR2(1)                    not null,    /*记帐码                 */
   AWBBB021             VARCHAR2(255),                              /*备注                   */
   AWBBB022             VARCHAR2(1)                   not null,     /*是否暂存               */
   AWBBB023             VARCHAR2(1)                   not null,     /*来源                   */
   AWBBB024             VARCHAR2(1)                   not null,     /*内部折算状态           */
   AWBBB025             VARCHAR2(30),                               /*内部折算来源凭证号     */
   AWBBB026             VARCHAR2(1)                    not null,    /*外部折算状态           */
   AWBBB027             VARCHAR2(30),                               /*外部折算来源凭证号     */  
   AWBBB028             VARCHAR2(1)                    not null,    /*标错                   */ 
   AWBBB029             NUMBER(4),                                  /*会计年度                  */ 
   AWBBB030             NUMBER(2),                                  /*会计期间                   */                                                                                        
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER(1),                                  /*资料状态               */
   constraint PK_TB_AWBBB primary key (AWBBB_ID)
);
create sequence SEQ_TB_AWBBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBBB to public;
grant index  on TB_AWBBB to public;
grant update on TB_AWBBB to public; 
grant delete on TB_AWBBB to public;  
grant insert on TB_AWBBB to public; 
grant select on SEQ_TB_AWBBB to public;   


