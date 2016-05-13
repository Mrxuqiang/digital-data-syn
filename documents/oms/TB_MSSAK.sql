20141106 crate by sundan
================================================================================
��ṹ����:TB_MSSAK
��ṹ����:����С��Ʒ�Ʒ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MSSAK;
drop index AK_TB_MSSAK;
drop table TB_MSSAK;
create table TB_MSSAK  (
   MSSAK_ID             INTEGER                         not null,  /*����С��Ʒ�Ʒ���ID          */
   MSSAK001             INTEGER                         not null,  /*����       */
   MSSAK002             VARCHAR2(30)                    not null,  /*����       */
   MSSAK003             INTEGER,                                   /*Ӫ����֯id        */
   MSSAK004             INTEGER,                                   /*������ϵ��id       */
   MSSAK005             INTEGER,                                   /*ԭ�̳�id        */
   MSSAK006             INTEGER,                                   /*Ŀ���̳�id        */  
   MSSAK007             VARCHAR2(1),                               /*������ʽ  1.���� 2.���� 3.ɾ��      */
   MSSAK008             INTEGER,                                   /*¼����        */
   MSSAK009             date,                                      /*¼��ʱ��        */
   MSSAK010             INTEGER,                                   /*�����        */
   MSSAK011             date,                                      /*���ʱ��        */
   MSSAK012             VARCHAR(1),                                /*���״̬   N:δ��� Y:�����     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����  */                               
   CREATE_DATE          DATE,                                      /*��������      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա      */
   MODI_DATE            DATE,                                      /*�޸�����      */
   FLAG                 NUMBER(1),                                 /*����״̬      */
   constraint PK_TB_MSSAK primary key (MSSAK_ID)
);
create unique index AK_TB_MSSAK on TB_MSSAK (MSSAK001,MSSAK002,MSSAK003,FLAG);
create sequence SEQ_TB_MSSAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAK to public;
grant index  on TB_MSSAK to public;
grant update on TB_MSSAK to public; 
grant delete on TB_MSSAK to public;  
grant insert on TB_MSSAK to public; 
grant select on SEQ_TB_MSSAK to public;   
