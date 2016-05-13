/*
================================================================================
表结构代码:TB_TMPAC
表结构名称:最终结果
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TMPAC;
drop index AK_TB_TMPAC;
drop table TB_TMPAC;
create table TB_TMPAC  (

   TMPAC_ID              integer,       /*主ID  */
   TMPAC001              NUMBER(20),   /*单据ID  */
   TMPAC002              NUMBER(20),   /*单据类型 */
   TMPAC003              NUMBER(20),   /*明细ID  */
   TMPAC004              NUMBER(20),   /*商品ID*/
   TMPAC005              NUMBER(20),   /*维度1  */
   TMPAC006              NUMBER(20),   /*维度2 */
   TMPAC007              NUMBER(20),   /*维度2  */
   TMPAC008              NUMBER(20),   /*维度4 */
   TMPAC009              NUMBER(20),   /*维度5  */
   TMPAC010              NUMBER(20),    /*套件类型当TMPAC011值为1时：1为单包套件，0为多套 */
   TMPAC011              NUMBER(20),   /*锁定数量 */
   TMPAC012              NUMBER(20),   /*是否子套件*/
   TMPAC013              NUMBER(20),   /*仓库ID */
   TMPAC014              NUMBER(20),   /*出货组织*/
   TMPAC015              NUMBER(20),   /*货位ID */
   TMPAC016               NUMBER(20),   /*服务属性*/
   TMPAC017               NUMBER(20),   /*销售属性*/
   TMPAC018               NUMBER(20),   /*备用1*/
   TMPAC019               NUMBER(20),   /*备用2*/
   TMPAC020               NUMBER(20),   /*备用3*/
   TMPAC021              VARCHAR2(40),  /*子套件对应标识 */ 
   constraint PK_TB_TMPAC primary key (TMPAC_ID)
);

create sequence SEQ_TB_TMPAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TMPAC to public;
grant index  on TB_TMPAC to public;
grant update on TB_TMPAC to public; 
grant delete on TB_TMPAC to public;  
grant insert on TB_TMPAC to public; 
grant select on SEQ_TB_TMPAC to public;   


comment on table TB_TMPAC is '用于存放各个可用排车业务单据的初始数据';
 
comment on column tb_TMPAC.TMPAC_ID   is ' 主ID ';
comment on column tb_TMPAC.TMPAC001   is ' 单据ID ';
comment on column tb_TMPAC.TMPAC002   is ' 单据类型 ';
comment on column tb_TMPAC.TMPAC003   is ' 明细ID ';
comment on column tb_TMPAC.TMPAC004   is ' 商品ID';
comment on column tb_TMPAC.TMPAC005   is ' 维度1 ';
comment on column tb_TMPAC.TMPAC006   is ' 维度2';
comment on column tb_TMPAC.TMPAC007   is ' 维度2 ';
comment on column tb_TMPAC.TMPAC008   is ' 维度4';
comment on column tb_TMPAC.TMPAC009   is ' 维度5  ';
comment on column tb_TMPAC.TMPAC010   is '  套件类型当TMPAC011值为1时：1为单包套件，0为多套 ';
comment on column tb_TMPAC.TMPAC011   is ' 锁定数量 ';
comment on column tb_TMPAC.TMPAC012   is ' 是否子套件';
comment on column tb_TMPAC.TMPAC013   is ' 仓库ID ';
comment on column tb_TMPAC.TMPAC014   is ' 出货组织';
comment on column tb_TMPAC.TMPAC015   is ' 货位ID ';
comment on column tb_TMPAC.TMPAC016    is ' 服务属性';
comment on column tb_TMPAC.TMPAC017    is ' 销售属性';
comment on column tb_TMPAC.TMPAC018    is ' 备用1';
comment on column tb_TMPAC.TMPAC019    is ' 备用2';
comment on column tb_TMPAC.TMPAC010    is ' 备用3';
comment on column tb_TMPAC.TMPAC018   is ' 子套件对应标识 ';