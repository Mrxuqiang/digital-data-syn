/*
================================================================================
��ṹ����:TB_PUBIQ
��ṹ����:excel����ģ���ֶζ����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_PUBIQ;
drop index AK_TB_PUBIQ;
drop table TB_PUBIQ;
create table TB_PUBIQ  (
   PUBIQ_ID             INTEGER                         not null,  /*excelģ��ID */
   PUBIQ001             VARCHAR2(100)                   not null,  /*�ֶ�        */
   PUBIQ002             VARCHAR2(1),                               /*�ֶ�����    */
   PUBIQ003             VARCHAR2(200),                             /*�ֶγ���    */
   PUBIQ004             VARCHAR2(200),                             /*ӳ���ֶ�    */ 
   PUBIQ005             VARCHAR2(200),                             /*Ϊ�ռ��    */  
   PUBIQ006             VARCHAR2(200),                             /*������    */  
   PUBIQ007             VARCHAR2(4000),                            /*����        */  
   PUBIQ008             VARCHAR2(200),                             /*�ظ����    */  
   PUBIQ009             VARCHAR2(200),                             /*����        */  
   PUBIQ010             VARCHAR2(200),                              /*����1*/  
   PUBIQ011             VARCHAR2(200),                              /*����1*/  
   PUBIQ012             VARCHAR2(200),                              /*����1*/ 
   PUBIQ013             VARCHAR2(200),                              /*����1*/ 
   PUBIQ014             VARCHAR2(100),                              /*����1*/ 
   PUBIQ015             VARCHAR2(200),                              /*����1*/ 
   PUBIQ016             VARCHAR2(200),                              /*����1*/     
   PUBIQ017             VARCHAR2(200),                              /*����1*/    
   PUBIQ018             VARCHAR2(200),                              /*����1*/  
   PUBIQ019             VARCHAR2(200),                              /*����1*/   
   PUBIQ020             VARCHAR2(200),                              /*����1*/ 
   PUBIQ021             VARCHAR2(200),                              /*����1*/    
   PUBIQ022             VARCHAR2(200),                              /*����1*/  
   PUBIQ023             VARCHAR2(200),                              /*����1*/  
   PUBIQ024             VARCHAR2(200),                              /*����1*/  
   PUBIQ025             VARCHAR2(200),                              /*����1*/                                             
   CREATE_USER          VARCHAR2(12),                               /*������Ա           */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����       */                               
   CREATE_DATE          DATE,                                       /*��������           */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա           */
   MODI_DATE            DATE,                                       /*�޸�����           */
   FLAG                 NUMBER,                                     /*����״̬           */
   constraint PK_TB_PUBIQ primary key (PUBIQ_ID)
);
create unique index AK_TB_PUBIQ on TB_PUBIQ(PUBIQ031,PUBIQ032,FLAG);
create sequence SEQ_TB_PUBIQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIQ to public;
grant index  on TB_PUBIQ to public;
grant update on TB_PUBIQ to public; 
grant delete on TB_PUBIQ to public;  
grant insert on TB_PUBIQ to public;  
grant select on SEQ_TB_PUBIQ to public;   
