/*
================================================================================
��ṹ����:TB_PUBEC
��ṹ����:�������ʱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBEC;
drop index AK_TB_PUBEC;
drop table TB_PUBEC;
create table TB_PUBEC  (
   PUBEC_ID             INTEGER                         not null,  /*��������ID  */
   PUBEC001             INTEGER                         not null,  /*��һ���ID */
   PUBEC002             INTEGER                         not null,  /*����ڼ䷽��ID  */
   PUBEC003             INTEGER                         not null,  /*����ڼ�ID */ 
   PUBEC004             INTEGER                         not null,  /*����ڼ��·�ID */ 
   PUBEC005             VARCHAR2(4)                     not null,  /*�����*/    
   PUBEC006             VARCHAR2(2)                     not null,  /*����·�*/  
   PUBEC007             NUMBER(16,9),                              /*��������*/ 
   CRECTE_USER          VARCHAR2(12),                              /*������Ա*/
   USER_GROUP           VARCHAR2(12),                              /*������Ա����*/                               
   CRECTE_DATE          DATE,                                      /*��������*/
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա*/
   MODI_DATE            DATE,                                      /*�޸�����*/
   FLAG                 NUMBER(1),                                 /*����״̬*/
   constraint PK_TB_PUBEC primary key (PUBEC_ID)
);
create sequence SEQ_TB_PUBEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBEC to public;
grant index  on TB_PUBEC to public;
grant update on TB_PUBEC to public; 
grant delete on TB_PUBEC to public;  
grant insert on TB_PUBEC to public; 
grant select on SEQ_TB_PUBEC to public;   