/*
================================================================================
��ṹ����:TB_SEROC
��ṹ����:Ѳ����¼��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SEROC;
drop index AK_TB_SEROC;
drop table TB_SEROC;
create table TB_SEROC  (
   SEROC_ID             INTEGER                         not null,  /*Ѳ����¼ID                 */
   SEROC001             INTEGER                         not null,  /*�����ձ���ID               */
   SEROC002             VARCHAR2(8),                               /*Ѳ����ʼʱ��             */
   SEROC003             VARCHAR2(8) ,                              /*ѡ������ʱ��              */   
   SEROC004             INTEGER ,                                  /*չλID                    */   
   SEROC005             VARCHAR2(2) ,                              /*Υ������                  */   
   SEROC006             VARCHAR2(2000) ,                           /*��ע                      */   
   SEROC007             VARCHAR2(1) ,                              /*�Ƿ񿪾�����֪ͨ��        */   
   SEROC008             INTEGER ,                                  /*Ѳ����ԱID                */      
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_SEROC primary key (SEROC_ID)
);
create sequence SEQ_TB_SEROC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROC to public;
grant index  on TB_SEROC to public;
grant update on TB_SEROC to public; 
grant delete on TB_SEROC to public;  
grant insert on TB_SEROC to public; 
grant select on SEQ_TB_SEROC to public;   