/*
================================================================================
表结构代码:TB_CONAE
表结构名称:合同签约模版表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAE;
drop index AK_TB_CONAE;
drop table TB_CONAE;
create table TB_CONAE  (
   CONAE_ID             INTEGER                         not null,  /*签约模板明细ID			  	  */
   CONAE001             INTEGER                         not null,  /*公司ID					  */
   CONAE002             INTEGER                         not null,  /*营运组织ID					  */
   CONAE003             VARCHAR2(1)                     not null,  /*计算类型1.一次性 2.周期固定 3.周期比例 4.其他项目*/
   CONAE004             INTEGER                         not null,  /*费用ID					  */
   CONAE005             INTEGER                         not null,  /*公式ID					  */
   CONAE006             VARCHAR2(1),                               /*标准层级 1.摊位 2.商品			  */
   CONAE007             VARCHAR2(1),                               /*结算展帐 1.自然月 2.展帐单	3.正推 4.反推     */
   CONAE008             VARCHAR2(255),                             /*备注					  */
   CONAE009             VARCHAR2(1),                               /*计算方式 1.分段单一比例 2.分段累计 3.固定比例 4.封顶比例     */ del ouwx
   CONAE010             VARCHAR2(1),                               /*标准类型 1.日标准 2.月标准		          */
   CONAE011             VARCHAR2(1),                               /*首付展帐 1.自然月 2.展帐单	3.正推 4.反推     */ add ouwx 101203
   CONAE012             INTGER,                                    /*首付方式ID                                   */ add ouwx 101203
   CONAE013             INTGER,                                    /*结算方式ID                                   */ add ouwx 101203
   CONAE014             VARCHAR2(1),                               /*权益类型1.权责发生制 2.收付实现制            */ 20120327 add by ouwx for 0011166
   CONAE015             VARCHAR2(30)                    not null,  /*SAP公司代码         */
   CONAE016             VARCHAR2(30)                    not null,  /*SAP商业实体         */
   CONAE017             NUMBER(12,2),                              /*费用占比            */
   CONAE018             INTGER,                                    /*科目确定值ID        */ 开窗：TB_CONAL
   CONAE019             INTGER,                                    /*条款编号ID          */ 开窗：TB_CONAK 
   CONAE020             INTGER,                                    /*频率条款ID          */ 开窗：TB_CONAN
   CONAE021             INTGER,                                    /*SAP费用代码         */ 开窗：TB_CONAM
   CONAE022             NUMBER(12,2),                              /*金额                */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员					  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门				  */                               
   CREATE_DATE          DATE,                                      /*建立日期					  */
   MODIFIER             VARCHAR2(12),                              /*修改人员					  */
   MODI_DATE            DATE,                                      /*修改日期					  */
   FLAG                 NUMBER,                                 /*资料状态					  */
   constraint PK_TB_CONAE primary key (CONAE_ID)
);
create unique index AK_TB_CONAE on TB_CONAE (CONAE002,CONAE003,CONAE004);
create sequence SEQ_TB_CONAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAE to public;
grant index  on TB_CONAE to public;
grant update on TB_CONAE to public; 
grant delete on TB_CONAE to public;  
grant insert on TB_CONAE to public; 
grant select on SEQ_TB_CONAE to public;   