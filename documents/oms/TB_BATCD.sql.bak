/*
================================================================================
表结构代码:TB_BATCD
表结构名称:成本表/2011-10-09
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATCD;
drop table TB_BATCD;
create table TB_BATCD  (
   BATCD_ID	            integer	not null,                           /*成本ID           */
   BATCD001	            integer	not null,                           /*批次ID（关联TB_BATCA表主键）       */
   BATCD002	            integer	not null,                           /*单据类型         */
   BATCD003	            integer	not null,                           /*单据ID           */
   BATCD004	            integer	not null,                           /*单据明细ID（对应子件商品的单据明细ID）       */
   BATCD005	            integer	not null,                           /*来源单别         */
   BATCD006	            varchar2(64) not null,	                    /*来源单号         */
   BATCD007	            integer	not null,                           /*套件商品ID       */
   BATCD008	            integer,                                    /*单据套件明细ID   */
   BATCD009	            integer	not null,                           /*仓库ID           */
   BATCD010	            integer	not null,                           /*仓位ID           */
   BATCD011	            integer	not null,	                          /*税种ID           */
   BATCD012	            number(18,3)	not null,	                    /*税率             */
   BATCD013	            integer	not null,     	                    /*方向（1、增批次 -1、扣批次）             */
   BATCD014	            integer	not null,                           /*子件商品ID       */
   BATCD015	            integer,                         		        /*子件维度1ID      */
   BATCD016	            integer,                         		        /*子件维度2ID      */
   BATCD017	            integer,                         		        /*子件维度3ID      */
   BATCD018	            integer,                         		        /*子件维度4ID      */
   BATCD019	            integer,                         		        /*子件维度5ID      */
   BATCD020	            number(18,3)	not null,                     /*子件数量         */
   BATCD021	            number(12,2)	not null,                     /*子件进价         */
   BATCD022	            number(12,2)	not null,                     /*子件进价金额     */
   BATCD023	            number(12,2)	not null,                     /*子件结算价       */
   BATCD024	            number(12,2)	not null,                     /*子件结算金额     */
   BATCD025	            number(12,2)	not null,	                    /*子件税额         */
   BATCD026	            VARCHAR2(30)	not null,                     /*套件分组标识     */
   BATCD027	            integer,                         		        /*套件维度1ID      */
   BATCD028	            integer,                         		        /*套件维度2ID      */
   BATCD029	            integer,                         		        /*套件维度3ID      */
   BATCD030	            integer,                         		        /*套件维度4ID      */
   BATCD031	            integer,                         		        /*套件维度5ID      */
   BATCD032	            integer,                         		    /*签收单ID         */--20111209 add by xiechun
   BATCD033	            integer,                         		    /*签收单明细ID     */ --20111209 add by xiechun
   CREATE_USER          VARCHAR2(12),                               /*建立人员         */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门     */
   CREATE_DATE          DATE,                                       /*建立日期         */
   MODIFIER             VARCHAR2(12),                               /*修改人员         */
   MODI_DATE            DATE,                                       /*修改日期         */
   FLAG                 NUMBER(1),                                  /*资料状态         */
   
   constraint PK_TB_BATCD primary key (BATCD_ID)
);
create sequence SEQ_TB_BATCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATCD to public;
grant index  on TB_BATCD to public;
grant update on TB_BATCD to public;
grant delete on TB_BATCD to public;
grant insert on TB_BATCD to public;
grant select on SEQ_TB_BATCD to public;