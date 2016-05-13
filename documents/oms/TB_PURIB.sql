/*
================================================================================
表结构代码:TB_PURIB
表结构名称:采购申请单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURIB;
drop index AK_TB_PURIB;
drop table TB_PURIB;
create table TB_PURIB  (
   PURIB_ID               INTEGER                   not null,             /*商品明细ID           */
   PURIB001               INTEGER                   not null,             /*采购申请单ID         */
   PURIB002               INTEGER                   not null,             /*商品ID               */
   PURIB003               INTEGER,                                        /*维度1                */
   PURIB004               INTEGER,                                        /*维度2                */
   PURIB005               INTEGER,                                        /*维度3                */
   PURIB006               INTEGER,                                        /*维度4                */
   PURIB007               INTEGER,                                        /*维度5                */
   PURIB008               INTEGER                   not null,             /*采购单位             */
   PURIB009               NUMBER(18,3)              not null,             /*申请量               */
   PURIB010               NUMBER(18,3)              not null,             /*采购量               */ 
   PURIB011               NUMBER(12,2),                                   /*税前单价             */
   PURIB012               NUMBER(12,2),                                   /*含税单价             */
   PURIB013               INTEGER                   not null,             /*税种                 */
   PURIB014               NUMBER(18,3)              not null,             /*税率                 */
   PURIB015               NUMBER(18,3),                                   /*取消量               */  --modify by 20100622
   PURIB016               NUMBER(12,2),                                   /*税前金额             */
   PURIB017               NUMBER(12,2),                                   /*含税金额             */
   PURIB018               INTEGER,                                        /*供应商               */
   PURIB019               VARCHAR2(1),                                    /*销售属性             */  --modify by 20100815
--   PURIB020             NUMBER(18,3),                                   /*扣率                 */ --mrak by 20100328
 --  PURIB021             VARCHAR2(1)               not null,             /*结案码ˇ              */ --mrak by 20100328
 --  PURIB022             NUMBER(12,2),                                   /*当前售价             */ --mrak by 20100328
   --PURIB023             NUMBER(18,3),                                   /*当前扣率             */ --mrak by 20100328
  -- PURIB024             NUMBER(1)                 not null,             /*优先级               */ --mrak by 20100328
   PURIB025               DATE ,                                          /*预交货日             */
   PURIB026               NUMBER(18,3),                                   /*单位换算率           */
   PURIB027               VARCHAR2(255),                                  /*备注                 */
   PURIB028               VARCHAR2(1),                                    /*商品服务属性         */ add by hansf 1、套件 2组装件 3补件
   PURIB029               NUMBER(12,2),			                  /*待收货量             */
   PURIB030               NUMBER(12,2),                                   /*入库量               */
   PURIB031               VARCHAR2(1),                                    /*是否组装品           */
   PURIB032               VARCHAR2(1),                                    /*是否成分             */
   PURIB033               INTEGER,                                        /*主商品ID             */
   PURIB034               INTEGER,                                        /*包数                 */
   PURIB035               VARCHAR2(30),                                   /*子套件对应关系随机码 */
   PURIB036               VARCHAR2(255),                                  /*说明                 */--20110503 add by xiechun
   PURIB037               VARCHAR2(255),                                  /*申请原因             */--20110503 add by xiechun
   PURIB038               NUMBER(18,3),                                   /*确定量               */--20111103 add by shizhan
   CREATE_USER            VARCHAR2(12),                                   /*建立人员             */
   USER_GROUP             VARCHAR2(12),                                   /*建立人员部门         */                               
   CREATE_DATE            DATE,                                           /*建立日期             */
   MODIFIER               VARCHAR2(12),                                   /*修改人员             */
   MODI_DATE              DATE,                                           /*修改日期             */
   FLAG                   NUMBER(1),                                      /*资料状态             */
   constraint PK_TB_PURIB primary key (PURIB_ID)
);

create sequence SEQ_TB_PURIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURIB to public;
grant index  on TB_PURIB to public;
grant update on TB_PURIB to public; 
grant delete on TB_PURIB to public;  
grant insert on TB_PURIB to public; 
grant select on SEQ_TB_PURIB to public;   