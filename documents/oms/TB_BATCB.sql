/*
================================================================================
表结构代码:TB_BATCB
表结构名称:单品明细/2011-10-09
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATCB;
drop table TB_BATCB;
create table TB_BATCB  (
   BATCB_ID	            integer 	not null,	                        /*单品明细ID       */
   BATCB001	            integer 	not null,	                        /*批次ID           */
   BATCB002	            varchar2(64) 	not null,	                    /*子件库存条码     */
   BATCB003	            number(18,3) 	not null,	                    /*子件库存数量     */
   BATCB004	            number(18,3) 	not null,	                    /*子件出库数量     */
   BATCB005	            number(18,3) 	not null,                     /*子件锁定数量     */
   CREATE_USER          VARCHAR2(12),                               /*建立人员         */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门     */
   CREATE_DATE          DATE,                                       /*建立日期         */
   MODIFIER             VARCHAR2(12),                               /*修改人员         */
   MODI_DATE            DATE,                                       /*修改日期         */
   FLAG                 NUMBER(1),                                  /*资料状态         */

   constraint PK_TB_BATCB primary key (BATCB_ID)
);
create sequence SEQ_TB_BATCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATCB to public;
grant index  on TB_BATCB to public;
grant update on TB_BATCB to public;
grant delete on TB_BATCB to public;
grant insert on TB_BATCB to public;
grant select on SEQ_TB_BATCB to public;