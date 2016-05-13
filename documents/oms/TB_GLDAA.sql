/*
================================================================================
��ṹ����:TB_GLDAA
��ṹ����:�ڳ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAA;
drop index AK_TB_GLDAA;
drop table TB_GLDAA;
create table TB_GLDAA  (
   GLDAA_ID             INTEGER                         not null,   /*�ڳ����ID        */
   GLDAA001             INTEGER                         not null,   /*�����ʲ�         */
   GLDAA002             INTEGER                         not null,   /*���㷽ʽ         */
   GLDAA003             VARCHAR2(4)                     not null,   /*������         */
   GLDAA004             VARCHAR2(2)                     not null,   /*����ڼ�         */
   GLDAA005             INTEGER                         not null,   /*����ID             */
   GLDAA006             NUMBER(5,4),                                /*����1            */
   GLDAA007             NUMBER(5,4),                                /*����2            */
   GLDAA008             INTEGER                         not null,   /*��ĿID        */
   GLDAA009             VARCHAR2(1),                                /*Ԥ���ֶ�        */
   GLDAA010             VARCHAR2(4)                     not null,   /*����           */
   GLDAA011             INTEGER,                                    /*������λID       */
   GLDAA012             VARCHAR2(20) ,                              /*������Ŀ��ʶ   */
   GLDAA013             NUMBER(16,2),                               /*����           */
   GLDAA014             NUMBER(16,2),                               /*ԭ��           */
   GLDAA015             NUMBER(16,2),                               /*����           */
   GLDAA016             NUMBER(16,2) ,                              /*����           */
   GLDAA017             INTEGER                         not null,   /*��˾����ID       */
   GLDAA018             INTEGER                         not null,   /*�������ID       */
   CREATE_USER          VARCHAR2(12),                               /*������Ա               */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����           */                               
   CREATE_DATE          DATE,                                       /*��������               */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա               */
   MODI_DATE            DATE,                                       /*�޸�����               */
   FLAG                 NUMBER(1),                                  /*����״̬               */
   constraint PK_TB_GLDAA primary key (GLDAA_ID)
);
create unique index AK_TB_GLDAA on TB_GLDAA (GLDAA008,GLDAA012);
create sequence SEQ_TB_GLDAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAA to public;
grant index  on TB_GLDAA to public;
grant update on TB_GLDAA to public; 
grant delete on TB_GLDAA to public;  
grant insert on TB_GLDAA to public; 
grant select on SEQ_TB_GLDAA to public;   