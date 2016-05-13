/*
================================================================================
表结构代码:TB_PMTEA
表结构名称:交款折扣促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTEA;
drop index AK_TB_PMTEA;
drop table TB_PMTEA;
create table TB_PMTEA  (
   PMTEA_ID             INTEGER                         not null,  /*交款折扣单ID      */
   PMTEA001             INTEGER                         not null,  /*单别ID            */
   PMTEA002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTEA003             DATE                            not null,  /*单据日期          */
   PMTEA004             INTEGER                         not null,  /*负责营运组织      */
   PMTEA005             INTEGER                         not null,  /*负责部门ID        */
   PMTEA006             INTEGER                         not null,  /*负责人员ID        */
   PMTEA007             INTEGER                         not null,  /*促销主题ID        */
   PMTEA008             VARCHAR2(255),                             /*促销描述          */
   PMTEA009             VARCHAR2(1),                               /*是否能积分        */
   PMTEA010             VARCHAR2(1),                               /*促销能否同时交款折扣  */
   PMTEA011             VARCHAR2(2),                               /*折扣方式01.单一折扣02.分段折扣03.满额折扣04.分段满额折扣 05.分段满额累计折扣 06.逐单折扣         */
   PMTEA012             VARCHAR2(2),                               /*金额条件类型      */
   PMTEA013             NUMBER(12,2),                              /*条件额度          */
   PMTEA014             VARCHAR2(1),                               /*尾款不参加促销    */
   PMTEA015             VARCHAR2(2),                               /*分摊方式          */
   PMTEA016             VARCHAR2(2),                               /*分摊金额          */
   PMTEA017             INTEGER,                                   /*录入人ID          */
   PMTEA018             DATE,                                      /*录入日期          */
   PMTEA019             INTEGER,                                   /*审核人ID          */
   PMTEA020             DATE,                                      /*审核日期          */
   PMTEA021             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTEA022             VARCHAR2(1),                               /*是否签核          */
   PMTEA023             VARCHAR2(30),                              /*签核单号          */
   PMTEA024             VARCHAR2(1),                               /*签核码            */
   PMTEA025             VARCHAR2(2)                     not null,  /*促销类型          */
   PMTEA026             VARCHAR2(1),                               /*全款参与促销      */
   PMTEA027             VARCHAR2(1),                               /*与其他活动叠加    */
   PMTEA028             VARCHAR2(255),                             /*备注          */
   PMTEA029             VARCHAR2(1),                               /*补贴类型          */
   PMTEA030             VARCHAR2(1),                               /*分摊金额          */
   PMTEA031             NUMBER(12,2),                               /*活动补贴租金倍数          */
   PMTEA032             NUMBER(12,2),                               /*公司承担费用          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTEA primary key (PMTEA_ID)
);
create unique index AK_TB_PMTEA on TB_PMTEA (PMTEA002);
create sequence SEQ_TB_PMTEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEA to public;
grant index  on TB_PMTEA to public;
grant update on TB_PMTEA to public; 
grant delete on TB_PMTEA to public;  
grant insert on TB_PMTEA to public; 
grant select on SEQ_TB_PMTEA to public;   