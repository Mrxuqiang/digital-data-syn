/*
================================================================================
表结构代码:TB_TMPAA
表结构名称:用于存放各个可用排车业务单据的初始数据
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TMPAA;
drop index AK_TB_TMPAA;
drop table TB_TMPAA;
create table TB_TMPAA  (

   TMPAA_ID              integer,       /*主ID  */
   TMPAA001              NUMBER(20),   /*单据ID  */
   TMPAA002              NUMBER(20),   /*单据类型 */
   TMPAA003              NUMBER(20),   /*明细ID  */
   TMPAA004              NUMBER(20),   /*商品ID*/
   TMPAA005              NUMBER(20),   /*维度1  */
   TMPAA006              NUMBER(20),   /*维度2 */
   TMPAA007              NUMBER(20),   /*维度2  */
   TMPAA008              NUMBER(20),   /*维度4 */
   TMPAA009              NUMBER(20),   /*维度5  */
   TMPAA010              NUMBER(20),    /*套件类型当TMPAB011值为1时：1为单包套件，0为多套 */
   TMPAA011              NUMBER(20),   /*锁定数量 */
   TMPAA012              NUMBER(20),   /*是否子套件*/
   TMPAA013              NUMBER(20),   /*仓库ID */
   TMPAA014              NUMBER(20),   /*出货组织*/
   TMPAA015              NUMBER(20),   /*货位ID */
   TMPAA016               NUMBER(20),   /*服务属性*/
   TMPAA017               NUMBER(20),   /*销售属性*/
   TMPAA018               NUMBER(20),   /*备用1*/
   TMPAA019               NUMBER(20),   /*备用2*/
   TMPAA020               NUMBER(20),   /*备用3*/
   TMPAA021              VARCHAR2(40),  /*子套件对应标识 */ 
   constraint PK_TB_TMPAA primary key (TMPAA_ID)
);

create sequence SEQ_TB_TMPAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TMPAA to public;
grant index  on TB_TMPAA to public;
grant update on TB_TMPAA to public; 
grant delete on TB_TMPAA to public;  
grant insert on TB_TMPAA to public; 
grant select on SEQ_TB_TMPAA to public;   


comment on table TB_TMPAA is '用于存放各个可用排车业务单据的初始数据';
 
comment on column tb_tmpaa.TMPAA_ID   is ' 主ID ';
comment on column tb_tmpaa.TMPAA001   is ' 单据ID ';
comment on column tb_tmpaa.TMPAA002   is ' 单据类型 ';
comment on column tb_tmpaa.TMPAA003   is ' 明细ID ';
comment on column tb_tmpaa.TMPAA004   is ' 商品ID';
comment on column tb_tmpaa.TMPAA005   is ' 维度1 ';
comment on column tb_tmpaa.TMPAA006   is ' 维度2';
comment on column tb_tmpaa.TMPAA007   is ' 维度2 ';
comment on column tb_tmpaa.TMPAA008   is ' 维度4';
comment on column tb_tmpaa.TMPAA009   is ' 维度5  ';
comment on column tb_tmpaa.TMPAA010   is '  套件类型当TMPAB011值为1时：1为单包套件，0为多套 ';
comment on column tb_tmpaa.TMPAA011   is ' 锁定数量 ';
comment on column tb_tmpaa.TMPAA012   is ' 是否子套件';
comment on column tb_tmpaa.TMPAA013   is ' 仓库ID ';
comment on column tb_tmpaa.TMPAA014   is ' 出货组织';
comment on column tb_tmpaa.TMPAA015   is ' 货位ID ';
comment on column tb_tmpaa.TMPAA016    is ' 服务属性';
comment on column tb_tmpaa.TMPAA017    is ' 销售属性';
comment on column tb_tmpaa.TMPAA018    is ' 备用1';
comment on column tb_tmpaa.TMPAA019    is ' 备用2';
comment on column tb_tmpaa.TMPAA010    is ' 备用3';
comment on column tb_tmpaa.TMPAA018   is ' 子套件对应标识 ';