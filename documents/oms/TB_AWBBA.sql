/*
================================================================================
��ṹ����:TB_AWBBA
��ṹ����:������ƾ֤��ϵ���ձ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AWBBA;
drop index AK_TB_AWBBA;
drop table TB_AWBBA;
create table TB_AWBBA  (
   AWBBA_ID             INTEGER                         not null,  /*���ձ�ID             */
   AWBBA001             INTEGER                         not null,  /*ģ��ID               */
   AWBBA002             INTEGER                         not null,  /*����ID               */
   AWBBA003             INTEGER                         not null,  /*����ID               */
   AWBBA004             VARCHAR2(30),                              /*���ݺ�               */
   AWBBA005             INTEGER,                                   /*ƾ֤ID               */
   AWBBA006             INTEGER,                                   /*��ʱƾ֤ID           */
   AWBBA007             DATE,                                      /*��������             */
   AWBBA008             INTEGER,                                   /*¼����ID             */
   AWBBA009             INTEGER,                                   /*�����ID             */
   AWBBA010             INTEGER,                                   /*����ID               */
   AWBBA011             NUMBER(16,2),                              /*ԭ�ҽ��             */
   AWBBA012             NUMBER(16,2),                              /*���ҽ��             */
   AWBBA013             INTEGER,                                   /*ƾ֤���ID           */
   AWBBA014             VARCHAR2(1),                               /*ƾ֤״̬             */
   AWBBA015             INTEGER,                                   /*��˾ID               */
   AWBBA016             INTEGER,                                   /*�������ID           */
   AWBBA017             INTEGER,                                   /*��������ID           */
   AWBBA022             VARCHAR2(255),                             /*��ע                 */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_AWBBA primary key (AWBBA_ID)
);
create unique index AK_TB_AWBBA on TB_AWBBA (AWBBA016,AWBBA017,AWBBA002,AWBBA003);
create sequence SEQ_TB_AWBBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBBA to public;
grant index  on TB_AWBBA to public;
grant update on TB_AWBBA to public; 
grant delete on TB_AWBBA to public;  
grant insert on TB_AWBBA to public; 
grant select on SEQ_TB_AWBBA to public;   