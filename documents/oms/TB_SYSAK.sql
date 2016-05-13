/*
================================================================================
��ṹ����:TB_SYSAK
��ṹ����:��ѯ��ͼ�����ֶα�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAK;
drop index AK_TB_SYSAK;
drop table TB_SYSAK;
create table TB_SYSAK  (
   SYSAK_ID             INTEGER                         not null,  /*��ѯ��ͼ�ֶ�ID   */
   SYSAK001             INTEGER                         not null,  /*��ѯ��ͼID       */
   SYSAK002             VARCHAR2(30)                    not null,  /*��ѯ��ͼ�ֶδ��� */
   SYSAK003             VARCHAR2(30),                              /*��ѯ��ͼ�ֶ����� */
   SYSAK004             VARCHAR2(1)                             ,  /*�Ƿ���ʾ         */
   SYSAK005             VARCHAR2(20)                    not null,  /*�ֶ�����         */
   SYSAK006             NUMBER(5),                                 /*����             */
   SYSAK007             NUMBER(5),                                 /*С��λ           */
   SYSAK008             VARCHAR2(1),                               /*�Ƿ񷵻�         */
   SYSAK009             VARCHAR2(20),                              /*������ͼ         */  
   SYSAK010             NUMBER(5),                                 /*��ʾ���         */
   SYSAK011             VARCHAR2(1),                               /*���ֶ���ʾ       */
   SYSAK012             VARCHAR2(1),                               /*���ֶλش�       */
   SYSAK013             VARCHAR2(1),                               /*����(��)         */
   SYSAK014             VARCHAR2(1),                               /*������(��)       */
   SYSAK015             VARCHAR2(20),                              /*��ͼ�����ֶ�     */
   SYSAK016             VARCHAR2(20),                              /*�Ӳ�ѯ�����ֶ��� */
   SYSAK017             VARCHAR2(1),                               /*�Ƿ�ϼ�         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSAK primary key (SYSAK_ID)
);
create unique index AK_TB_SYSAK on TB_SYSAK (SYSAK001,SYSAK002);
create sequence SEQ_TB_SYSAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAK to public;
grant index  on TB_SYSAK to public;
grant update on TB_SYSAK to public; 
grant delete on TB_SYSAK to public;  
grant insert on TB_SYSAK to public; 
grant select on SEQ_TB_SYSAK to public;   