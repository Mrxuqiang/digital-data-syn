/*
================================================================================
��ṹ����:TB_SERFF
��ṹ����:�ͻ����ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERFF;
drop index AK_TB_SERFF;
drop table TB_SERFF;
create table TB_SERFF  (
   SERFF_ID             INTEGER                      not null,     /*�ͻ���ϸID                */  
   SERFF001             INTEGER                      not null,     /*�ͻ���ID                  */  
   SERFF002             INTEGER                      not null,     /*��Դ��ID                  */  
   SERFF003             INTEGER                      not null,     /*��Դ����ϸID              */  
   SERFF004             INTEGER                      not null,     /*��Ʒ����                  */  
   SERFF005             INTEGER                      not null,     /*��Ʒ����                  */  
   SERFF006             INTEGER                                    /*ά��1                     */  
   SERFF007             INTEGER                                    /*ά��2                     */  
   SERFF008             INTEGER                                    /*ά��3                     */  
   SERFF009             INTEGER                                    /*ά��4                     */  
   SERFF010             INTEGER                                    /*ά��5                     */  
   SERFF011             INTEGER                      not null,     /*���ⵥλ                  */  
   SERFF012             NUMBER(12,2)                 not null,     /*��λ������                */  
   SERFF013             NUMBER(18,3)                 not null,     /*�ͻ���                    */  
   SERFF014             NUMBER(18,3)                 not null,     /*��������                  */ 
   SERFF015             NUMBER(12,2)                 not null,     /*��˰����                  */     
   SERFF016             NUMBER(12,2)                 not null,     /*��˰���                  */  
   SERFF017             VARCHAR2(25)                               /*��ע                      */
   SERFF018             NUMBER(18,3)                 not null,     /*���ͻ���                  */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */                               
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER(1),                                 /*����״̬                  */
   constraint PK_TB_SERFF primary key (SERFF_ID)
);
create index AK_TB_SERFF on TB_SERFF (SERFF_ID,SERFF002,SERFF005);
create sequence SEQ_TB_SERFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFF to public;
grant index  on TB_SERFF to public;
grant update on TB_SERFF to public; 
grant delete on TB_SERFF to public;  
grant insert on TB_SERFF to public; 
grant select on SEQ_TB_SERFF to public;   