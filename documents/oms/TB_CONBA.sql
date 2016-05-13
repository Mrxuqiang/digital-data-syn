/*
================================================================================
��ṹ����:TB_CONBA
��ṹ����:��ͬ�Żݵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBA;
drop index AK_TB_CONBA;
drop table TB_CONBA;
create table TB_CONBA  (
   CONBA_ID             INTEGER                         not null,  /*��ͬ�Żݵ�ID        */
   CONBA001             INTEGER                         not null,  /*����ID              */
   CONBA002             VARCHAR2(30)                    not null,  /*�Żݵ���            */
   CONBA003             DATE                            not null,  /*��������            */
   CONBA004             VARCHAR2(255)                           ,  /*�Ż�����            */
   CONBA005             INTEGER,                                   /*Ӫ����֯ID          */ 
   CONBA006             INTEGER,                                   /*¼����ID            */
   CONBA007             DATE,                                      /*¼������            */
   CONBA008             INTEGER,                                   /*�����ID            */
   CONBA009             DATE,                                      /*�������            */
   CONBA010             VARCHAR2(1)                     not null,  /*���״̬            */
   CONBA011             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CONBA012             VARCHAR2(30),                              /*ǩ�˵���            */
   CONBA013             VARCHAR2(1),                               /*ǩ����        1�����С�2��������3����      */  
   CONBA014             DATE                            not null,  /*��ͬ��ʼ��          */
   CONBA015             DATE                            not null,  /*��ͬ������          */
   CONBA016             NUMBER(14,2)                    not null,  /*�����Ԥ���ܶ�      */
   CONBA017             NUMBER(14,2)                    not null,  /*ȫ��չ�����ʵ�ֶ�  */
   CONBA018             NUMBER(14,2)                    not null,  /*ȫ��չ����Ԥ�����  */
   CONBA019             NUMBER(14,2)                    not null,  /*����������Ż��ܶ�  */
   CONBA020             NUMBER(14,2)                    not null,  /*ȫ��������Ż��ܶ�  */
   CONBA021             NUMBER(14,2)                    not null,  /*ȫ����������Ż��ܶ�*/
   CONBA022             NUMBER(14,2)                    not null,  /*�����ʣ���Ż��ܶ�  */
   CONBA023             VARCHAR2(255)                           ,  /*�Ż�ԭ��ID     ����     */
   CONBA024             VARCHAR2(1)                             ,  /*�Żݷ�ʽ       1.���� 2.�ڼ� 3.����    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                             
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CONBA primary key (CONBA_ID)
);
create unique index AK_TB_CONBA on TB_CONBA (CONBA002);
create sequence SEQ_TB_CONBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBA to public;
grant index  on TB_CONBA to public;
grant update on TB_CONBA to public; 
grant delete on TB_CONBA to public;  
grant insert on TB_CONBA to public; 
grant select on SEQ_TB_CONBA to public;   