/*
================================================================================
��ṹ����:TB_SERFD
��ṹ����:������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERFD;
drop index AK_TB_SERFD;
drop table TB_SERFD;
create table TB_SERFD  (
   SERFD_ID             INTEGER                      not null,     /*�����ϸID                */  
   SERFD001             INTEGER                      not null,     /*�����ID                  */  
   SERFD002             INTEGER                      not null,     /*�Ĵ浥ID                  */  
   SERFD003             INTEGER                      not null,     /*�Ĵ浥��ϸID              */  
   SERFD004             INTEGER                      not null,     /*��Ʒ����                  */  
   SERFD005             INTEGER                      not null,     /*��Ʒ����                  */  
   SERFD006             INTEGER,                                    /*ά��1                     */  
   SERFD007             INTEGER,                                    /*ά��2                     */  
   SERFD008             INTEGER,                                    /*ά��3                     */  
   SERFD009             INTEGER,                                    /*ά��4                     */  
   SERFD010             INTEGER,                                    /*ά��5                     */  
   SERFD011             INTEGER                      not null,     /*���ⵥλ                  */  
   SERFD012             NUMBER(12,2)                 not null,     /*��λ������                */  
   SERFD013             NUMBER(18,3)                 not null,     /*�Ĵ���                    */  
   SERFD014             NUMBER(18,3)                 not null,     /*�����                    */ 
   SERFD015             VARCHAR2(25),                               /*��ע                      */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա                  */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����              */                               
   CREATE_DATE          DATE,                                      /*��������                  */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                  */
   MODI_DATE            DATE,                                      /*�޸�����                  */
   FLAG                 NUMBER(1),                                 /*����״̬                  */
   constraint PK_TB_SERFD primary key (SERFD_ID)
);
create index AK_TB_SERFD on TB_SERFD (SERFD_ID,SERFD002,SERFD005);
create sequence SEQ_TB_SERFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFD to public;
grant index  on TB_SERFD to public;
grant update on TB_SERFD to public; 
grant delete on TB_SERFD to public;  
grant insert on TB_SERFD to public; 
grant select on SEQ_TB_SERFD to public;   