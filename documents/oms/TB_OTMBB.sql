20140718 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_OTMBB
表结构名称:订单信息主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTMBB;
drop index AK_TB_OTMBB;
drop table TB_OTMBB;
create table TB_OTMBB  (
   OTMBB_ID             INTEGER                         not null,  /*订单信息ID             */
   OTMBB001             VARCHAR2(4)                     not null,  /*城市编码               */
   OTMBB002             VARCHAR2(6)                     not null,  /*区县编码               */
   OTMBB003             VARCHAR2(30)                    not null,  /*顾客姓名               */
   OTMBB004             VARCHAR2(30)                    not null,  /*顾客电话               */   
   OTMBB005             VARCHAR2(30)		              	not null,  /*会员卡号               */
   OTMBB006             DATE                            not null,  /*订货日期               */  
   OTMBB007             DATE			                      not null,  /*送货日期               */ 
   OTMBB008             VARCHAR2(1)                     not null,  /*送货方式  1、送货到户 2、送货到楼 3、自提 4、其它    */ 
   OTMBB009             INTEGER				                  not null,  /*合同ID                 */  
   OTMBB010             INTEGER                         not null,  /*商户ID                 */  
   OTMBB011             INTEGER                         not null,	 /*展位ID                 */ 
   OTMBB012             NUMBER(22,2),                              /*订单总金额             */ 
   OTMBB013             VARCHAR2(255),			                       /*备注                   */     
   OTMBB014             VARCHAR2(1),				                       /*订单类型 1、邀约订单（OMS未审核订单） 2、普通订单（已审核订单，且有交款记录）      */ 
   OTMBB015             NUMBER(22,2),                              /*本次付款金额           */
   OTMBB016             VARCHAR2(255),                             /*其他约定               */   
   OTMBB017             VARCHAR2(1),				                       /*订单状态    1、新增，表示是红美传OMS  2、已送货，表示OMS传红美           */
   OTMBB018             VARCHAR2(30),                              /*星易家订单编号          */  
   OTMBB019             VARCHAR2(30),				                       /*OMS订单编号             */ 
   OTMBB020             VARCHAR2(16),                              /*商场编码                */ 
   OTMBB021             DATE,				                               /*已送货日期              */  
   OTMBB022             VARCHAR2(255),				                     /*送货地址                */    
   STATUS               VARCHAR2(1),                               /*传送状态  0：未传送 1：传送成功 2：传送失败 3：已送货，未传送 4：已送货，传送成功  7.已送货，推送失败        */  
   MSG                  VARCHAR2(255),                             /*消息提示                */ 
   Tran_date            Date,					                             /*传输日期                */ 
   Send_count           INTEGER,				                           /*传输次数                */                           
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER,                                    /*资料状态                */
   constraint PK_TB_OTMBB primary key (OTMBB_ID)
);
create unique index AK_TB_OTMBB on TB_OTMBB (OTMBB018);
create sequence SEQ_TB_OTMBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTMBB to public;
grant index  on TB_OTMBB to public;
grant update on TB_OTMBB to public; 
grant delete on TB_OTMBB to public;  
grant insert on TB_OTMBB to public; 
grant select on SEQ_TB_OTMBB to public;   