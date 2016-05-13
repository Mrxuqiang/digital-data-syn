/*
================================================================================
��ṹ����:TB_SALZE
��ṹ����:���ϳ齱��ˮ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALZE;
drop index AK_TB_SALZE;
drop table TB_SALZE;
create table TB_SALZE  (
   SALZE_ID             INTEGER                         not null,  /*��ˮ��ID           */
   SALZE001             INTEGER,                                   /*Ӫ����֯ID         */
   SALZE002             VARCHAR2(30)                            ,  /*Ӫ����֯����       */
   SALZE003             VARCHAR2(80)                            ,  /*Ӫ����֯����       */
   SALZE004             INTEGER,                                   /*���۵�ID           */
   SALZE005             VARCHAR2(30),                              /*���۵���           */
   SALZE006             VARCHAR2(2)                     not null,  /*�齱״̬1.���齱��������QR,δ�齱���ǳ齱ʧ��ʧ��Ҳ���ڴ��齱��2.ɨ��ɹ��齱�� 3.ɨ��齱�ɹ� 4.ɨ��ȡ���齱 5. oms������ֹ�齱*/
   SALZE007             VARCHAR2(80),                              /*�齱������ˮ�ţ�yyyymmddxxxxxxxx�� */
   SALZE008             NUMBER(12,2),                              /*���۳齱�ܽ��     */
   SALZE009             VARCHAR2(255),                             /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_SALZE primary key (SALZE_ID)
);
create unique index AK_TB_SALZE on TB_SALZE (SALZE007);
create sequence SEQ_TB_SALZE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALZE to public;
grant index  on TB_SALZE to public;
grant update on TB_SALZE to public; 
grant delete on TB_SALZE to public;  
grant insert on TB_SALZE to public; 
grant select on SEQ_TB_SALZE to public;   