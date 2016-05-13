/*
================================================================================
��ṹ����:TB_BTMBA
��ṹ����:���񵥽ӿڱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BTMBA;
drop index AK_TB_BTMBA;
drop table TB_BTMBA;
create table TB_BTMBA  (
   BTMBA_ID             INTEGER                 not null,              /*����ID      */ 
   BTMBA001             VARCHAR2(30)            not null,              /*���񵥺�      */
   BTMBA002             VARCHAR2(1)             not null,              /*��Դ������    */
   BTMBA003             VARCHAR2(30)            not null,              /*��Դ����      */
   BTMBA004             VARCHAR2(30)            not null,              /*�˿�����      */ 
   BTMBA005             VARCHAR2(30)            not null,              /*�ֻ���һ      */ 
   BTMBA006             VARCHAR2(30)            not null,              /*��ϵ��ʽ      */              
   BTMBA007             VARCHAR2(30)            not null,              /*�ջ����������*/              
   BTMBA008             VARCHAR2(255)           not null,              /*�ͻ���ַ      */              
   BTMBA009             VARCHAR2(32),                                  /*�ͻ�����      */
   BTMBA010             VARCHAR2(30)            not null,              /*��������      */         
   BTMBA011             NUMBER(20,2)            not null,              /*β����      */        
   BTMBA012             VARCHAR2(30),                                  /*����ֿ�      */
   BTMBA013             VARCHAR2(255),                                 /*����ֿ��ַ  */
   BTMBA014             VARCHAR2(50),                                  /*����ֿ���ϵ��*/
   BTMBA015             VARCHAR2(30),                                  /*����ֿ�绰  */
   BTMBA016             VARCHAR2(255),                                 /*��ע          */
   BTMBA017             VARCHAR2(30)            not null,              /*��Ʒ����      */  
   BTMBA018             VARCHAR2(80)            not null,              /*��Ʒ����      */                          
   BTMBA019             NUMBER(6)               not null,              /*����          */           
   BTMBA020             VARCHAR2(1),                                   /*��װ���񵥺�  */
   SYNC_STATE           VARCHAR2(10),                                  /*ͬ��״̬      */
   ERR_MSG              VARCHAR2(4000),                                /*����ԭ��      */                               
   CREATE_DATE          DATE,                                          /*��������      */
   MODI_DATE            DATE,                                          /*�޸�����      */
   constraint PK_TB_BTMBA primary key (BTMBA_ID)
);
create sequence SEQ_TB_BTMBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BTMBA to public;
grant index  on TB_BTMBA to public;
grant update on TB_BTMBA to public; 
grant delete on TB_BTMBA to public;  
grant insert on TB_BTMBA to public; 
grant select on SEQ_TB_BTMBA to public;   