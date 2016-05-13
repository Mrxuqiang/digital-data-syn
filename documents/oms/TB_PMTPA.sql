/*
================================================================================
��ṹ����:TB_PMTPA
��ṹ����:���Ʒ���յ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTPA;
drop index AK_TB_PMTPA;
drop table TB_PMTPA;
create table TB_PMTPA  (
   PMTPA_ID             INTEGER                         not null,  /*���Ʒ���յ�ID             */
   PMTPA001             INTEGER                         not null,  /*����ID                       */
   PMTPA002             VARCHAR2(30)                    not null,  /*���յ���                     */
   PMTPA003             DATE                            not null,  /*��������                     */
   PMTPA004             VARCHAR2(30),                              /*�ͻ�����                     */
   PMTPA005             VARCHAR2(30),                              /*�ͻ��绰                     */
   PMTPA006             INTEGER                         not null,  /*����Ӫ����֯                 */
   PMTPA007             INTEGER                         not null,  /*���ղ���ID                   */
   PMTPA008             INTEGER                         not null,  /*������ԱID                   */
   PMTPA009             VARCHAR2(255),                             /*��ע                         */
   PMTPA010             VARCHAR2(1),                               /*��������                     */
   PMTPA011             INTEGER,                                   /*���ղֿ�                     */
   PMTPA012             INTEGER,                                   /*¼����ID                     */
   PMTPA013             DATE,                                      /*¼������                     */
   PMTPA014             INTEGER,                                   /*�����ID                     */
   PMTPA015             DATE,                                      /*�������                     */
   PMTPA016             VARCHAR2(1)                     not null,  /*���״̬                     */
   PMTPA017             VARCHAR2(1)                     not null,  /*�������� 1.�������� 2.�����˻� */
   PMTPA018             INTEGER                         not null,  /*��Դ����ID                   */   
   PMTPA019             VARCHAR2(30)                    not null,  /*��Դ����                     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                     */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                 */                               
   CREATE_DATE          DATE,                                      /*��������                     */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                     */
   MODI_DATE            DATE,                                      /*�޸�����                     */
   FLAG                 NUMBER(1),                                 /*����״̬                     */
   constraint PK_TB_PMTPA primary key (PMTPA_ID)				                  
);
create unique index AK_TB_PMTPA on TB_PMTPA (PMTPA002);
create sequence SEQ_TB_PMTPA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTPA to public;
grant index  on TB_PMTPA to public;
grant update on TB_PMTPA to public; 
grant delete on TB_PMTPA to public;  
grant insert on TB_PMTPA to public; 
grant select on SEQ_TB_PMTPA to public;   