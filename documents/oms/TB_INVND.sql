/*
================================================================================
表结构代码:TB_INVND
表结构名称:品类引进协议子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVND;
drop index AK_TB_INVND;
drop table TB_INVND;
create table TB_INVND  (
   INVND_ID           INTEGER              not null,      /*回库明细ID          */
   INVND001           INTEGER              not null,      /*回库单ID            */
   INVND002           INTEGER              not null,      /*商品ID              */
   INVND003           INTEGER              not null,      /*单位ID              */
   INVND004           VARCHAR2(30),                       /*维度1ID             */
   INVND005           INTEGER,                            /*维度2ID             */
   INVND006           INTEGER,                            /*维度3ID             */
   INVND007           INTEGER,                            /*维度4ID             */
   INVND008           INTEGER,                            /*维度5ID             */
   INVND009           NUMBER(18,3)         not null,      /*发货数量            */
   INVND010           NUMBER(18,3)         not null,      /*回库数量            */
   INVND011           VARCHAR2(255),                      /*货位，默认为暂存货位，可修改*/
   INVND012           VARCHAR2(255),                      /*备注                */
   INVND013           INTEGER              not null,      /*签收单明细ID        */
   INVND014           VARCHAR2(1)          not null,      /*是否组装品          */
   INVND015           VARCHAR2(1)          not null,      /*是否成分            */
   INVND016           VARCHAR2(30),                       /*子套件对应随机码    */
   INVND017	      INTEGER			          /*所属组装品ID */
   CREATE_USER        VARCHAR2(12),                       /*建立人员            */
   USER_GROUP         VARCHAR2(12),                       /*建立人员部门        */                               
   CREATE_DATE        DATE,                               /*建立日期            */
   MODIFIER           VARCHAR2(12),                       /*修改人员            */
   MODI_DATE          DATE,                               /*修改日期            */
   FLAG               NUMBER(1),                          /*资料状态            */
   constraint PK_TB_INVND primary key (INVND_ID)
);

create sequence SEQ_TB_INVND minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVND to public;
grant index  on TB_INVND to public;
grant update on TB_INVND to public; 
grant delete on TB_INVND to public;  
grant insert on TB_INVND to public; 
grant select on SEQ_TB_INVND to public;   


