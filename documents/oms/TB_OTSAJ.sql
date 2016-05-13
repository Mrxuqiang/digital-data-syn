/*20141216 crate by sundan
================================================================================
表结构代码:TB_OTSAJ
表结构名称:对账单抬头信息表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_OTSAJ;
drop index AK_TB_OTSAJ;
drop table TB_OTSAJ;
create table TB_OTSAJ  (
   OTSAJ_ID             INTEGER                         not null,  /*对账单抬头信息ID              */
   OTSAJ001             VARCHAR2(4)                     not null,  /*公司代码                      */
   OTSAJ002             VARCHAR2(8)                     not null,  /*商场编码                      */
   OTSAJ003             VARCHAR2(13),                              /*不动产编号                    */
   OTSAJ004             VARCHAR2(13)                    not null,  /*合同编号                      */
   OTSAJ005             VARCHAR2(40),                              /*付款频率                      */
   OTSAJ006             DATE,					                             /*合同生效日期                  */
   OTSAJ007             DATE,					                             /*合同起始日期                  */
   OTSAJ008             DATE,					                             /*合同截止日期                  */
   OTSAJ009             NUMBER(22,2),				                       /*合同总租金                    */
   OTSAJ010             VARCHAR2(60),                              /*品牌名称                      */
   OTSAJ011             VARCHAR2(80),                              /*合同名称                      */
   OTSAJ012             VARCHAR2(4),                               /*合同类型                      */
   OTSAJ013             VARCHAR2(30),                              /*合同类型名称                  */  
   OTSAJ014             VARCHAR2(60),                              /*建筑物名称                    */  
   OTSAJ015             VARCHAR2(10),                              /*客户编号                      */
   OTSAJ016             VARCHAR2(60),                              /*客户名称                      */
   OTSAJ017             VARCHAR2(150),                              /*展位名称                      */
   OTSAJ018             VARCHAR2(40),                              /*合同状态                      */
   OTSAJ019             VARCHAR2(12),                              /*最后修改人                    */
   OTSAJ020             DATE,                                      /*最后修改日期                  */
   OTSAJ021             VARCHAR2(10),                               /*最后修改时间                  */
   OTSAJ022             VARCHAR2(1),                               /*消息类型                      */
   OTSAJ023             VARCHAR2(60),                              /*消息文本                      */
   OTSAJ024             DATE,                                      /*OMS处理日期                   */
   OTSAJ025             VARCHAR2(8),                               /*OMS处理时间                   */
   OTSAJ026             VARCHAR2(80),                              /*商场名称                      */
   OTSAJ027             INTEGER,                                   /*商场ID                        */ 
   OTSAJ028             INTEGER,                                   /*合同id                        */ 
   OTSAJ029             INTEGER,                                   /*楼栋id                        */ 
   OTSAJ030             INTEGER,                                   /*楼层id                        */       
   RESERVED1            VARCHAR2(60),                              /*备用字段1                     */
   RESERVED2            VARCHAR2(60),                              /*备用字段2                     */
   RESERVED3            VARCHAR2(60),                              /*备用字段3                     */
   RESERVED4            VARCHAR2(60),                              /*备用字段4                     */
   RESERVED5            VARCHAR2(60),				   /*备用字段5                     */
   RESERVED6            VARCHAR2(60),                              /*备用字段6                     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   operatebatchno       VARCHAR2(100),                             /*批号*/
   constraint PK_TB_OTSAJ primary key (OTSAJ_ID)
);
--create unique index AK_TB_OTSAJ on TB_OTSAJ (OTSAJ_ID);
create sequence SEQ_TB_OTSAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAJ to public;
grant index  on TB_OTSAJ to public;
grant update on TB_OTSAJ to public; 
grant delete on TB_OTSAJ to public;  
grant insert on TB_OTSAJ to public; 
grant select on SEQ_TB_OTSAJ to public;   