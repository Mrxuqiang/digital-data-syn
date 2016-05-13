/*
================================================================================
��ṹ����:TB_HRBAF
��ṹ����:���ͳ��������ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_HRBAF;
drop index AK_TB_HRBAF;
drop table TB_HRBAF;
create table TB_HRBAF  (
   HRBAF_ID             INTEGER                         not null,  /*���ͳ�����ID     */
   HRBAF001             VARCHAR2(8)                     not null,  /*���               */
   HRBAF002             VARCHAR2(30)                    not null,  /*����               */
   HRBAF003             VARCHAR2(8)                     not null,  /*������           */ 
   HRBAF004             NUMBER(12,2)                    not null,  /*ͳ������           */
   HRBAF005             NUMBER(12,2)                    not null,  /*ͳ������           */  
   HRBAF006             NUMBER(1)                       not null,  /*��λԭ��           */
   HRBAF007             NUMBER(1)                       not null,  /*��Ч��             */        
   HRBAF008             VARCHAR2(255)                   not null,  /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_HRBAF primary key (HRBAF_ID)
);
create unique index AK_TB_HRBAF on TB_HRBAF (HRBAF001);
create sequence SEQ_TB_HRBAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAF to public;
grant index  on TB_HRBAF to public;
grant update on TB_HRBAF to public; 
grant delete on TB_HRBAF to public;  
grant insert on TB_HRBAF to public; 
grant select on SEQ_TB_HRBAF to public;   