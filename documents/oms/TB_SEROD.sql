/*
================================================================================
��ṹ����:TB_SEROD
��ṹ����:Ѳ����¼��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SEROD;
drop index AK_TB_SEROD;
drop table TB_SEROD;
create table TB_SEROD  (
   SEROD_ID             INTEGER                         not null,  /*������¼ID                */
   SEROD001             INTEGER                         not null,  /*�����ձ���ID              */
   SEROD002             VARCHAR2(2),                               /*����                    */
   SEROD003             VARCHAR2(2000) ,                           /*��ע                     */   
   SEROD004             VARCHAR2(1) ,                              /*�Ƿ񿪾�����֪ͨ��       */   
   SEROD005             INTEGER ,                                  /*������ԱID               */      
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */ 
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_SEROD primary key (SEROD_ID)
);
create sequence SEQ_TB_SEROD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROD to public;
grant index  on TB_SEROD to public;
grant update on TB_SEROD to public; 
grant delete on TB_SEROD to public;  
grant insert on TB_SEROD to public; 
grant select on SEQ_TB_SEROD to public;   