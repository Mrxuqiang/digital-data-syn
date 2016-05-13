/*
================================================================================
��ṹ����:TB_SEROB
��ṹ����:�����¼��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SEROB;
drop index AK_TB_SEROB;
drop table TB_SEROB;
create table TB_SEROB  (
   SEROB_ID             INTEGER                         not null,  /*�����¼ID             */
   SEROB001             INTEGER                         not null,  /*�����ձ���ID           */
   SEROB002             VARCHAR2(2),                               /*����                 */
   SEROB003             VARCHAR2(2000) ,                           /*����                  */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_SEROB primary key (SEROB_ID)
);
create sequence SEQ_TB_SEROB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROB to public;
grant index  on TB_SEROB to public;
grant update on TB_SEROB to public; 
grant delete on TB_SEROB to public;  
grant insert on TB_SEROB to public; 
grant select on SEQ_TB_SEROB to public;   