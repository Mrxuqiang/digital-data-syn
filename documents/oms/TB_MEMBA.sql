/*
================================================================================
��ṹ����:TB_MEMBA
��ṹ����:��Ա�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMBA;
drop index AK_TB_MEMBA;
drop table TB_MEMBA;
create table TB_MEMBA  (
   MEMBA_ID             INTEGER                         not null,  /*��Ա������ID        */
   MEMBA001             VARCHAR2(4)                     not null,  /*�������            */
   MEMBA002             VARCHAR2(30)                    not null,  /*��������            */
   MEMBA003             NUMBER(12)                      not null,  /*�������            */
   MEMBA004             NUMBER(12)                      not null,  /*��λ����            */
   MEMBA005             NUMBER(12,2)                    not null,  /*Ĭ���ۿ���(%)       */
   MEMBA006             VARCHAR2(1),                               /*��Ա��              */
   MEMBA007             VARCHAR2(1),                               /*���ۿ�              */
   MEMBA008             VARCHAR2(1),                               /*�ɻ���              */
   MEMBA009             VARCHAR2(1)                     not null,  /*��Ч�ڷ�ʽ[1 2]     */
   MEMBA010             DATE,                                      /*��Ч����YYYMMDD     */
   MEMBA011             NUMBER(12),                                /*��������Ч          */
   MEMBA012             VARCHAR2(1),                               /*�Ƿ���Ч�ڿ��ӳ�    */
   MEMBA013             VARCHAR2(1)                     not null,  /*��Ч���ӳ���ʽ      */
   MEMBA014             NUMBER(12),                                /*���ִﵽ����        */
   MEMBA015             NUMBER(12),                                /*���Ѵﵽ��Ԫ        */
   MEMBA016             NUMBER(12),                                /*���Ѵﵽ����        */
   MEMBA017             DATE,                                      /*�ӳ���YYYMMDD       */
   MEMBA018             NUMBER(12),                                /*�ӳ�����            */
   MEMBA019             VARCHAR2(1)                     not null,  /*�Ƿ��Զ������      */
   MEMBA020             NUMBER(12),                                /*���º�����          */
   MEMBA021             NUMBER(12),                                /*���պ�����          */
   MEMBA022             DATE,                                      /*YYYMMDD ������      */
   MEMBA023             VARCHAR2(1),                               /*�Ƿ��в���������    */
   MEMBA024             NUMBER(12),                                /*С�ڼ��²�����      */
   MEMBA025             VARCHAR2(1),                               /*����ַ�ʽ          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_MEMBA primary key (MEMBA_ID)
);
create unique index AK_TB_MEMBA on TB_MEMBA (MEMBA001);
create sequence SEQ_TB_MEMBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBA to public;
grant index  on TB_MEMBA to public;
grant update on TB_MEMBA to public; 
grant delete on TB_MEMBA to public;  
grant insert on TB_MEMBA to public; 
grant select on SEQ_TB_MEMBA to public;   