/*
================================================================================
��ṹ����:TB_PMTNA
��ṹ����:ȯ���յ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTNA;
drop index AK_TB_PMTNA;
drop table TB_PMTNA;
create table TB_PMTNA  (
   PMTNA_ID             INTEGER                         not null,  /*ȯ���յ�ID                   */
   PMTNA001             INTEGER                         not null,  /*����ID                       */
   PMTNA002             VARCHAR2(30)                    not null,  /*���յ���                     */
   PMTNA003             DATE                            not null,  /*��������                     */
   PMTNA004             VARCHAR2(30),                              /*�ͻ�����                     */
   PMTNA005             VARCHAR2(30),                              /*�ͻ��绰                     */
   PMTNA006             INTEGER                         not null,  /*����Ӫ����֯                 */
   PMTNA007             INTEGER                         ,          /*���ղ���ID                   */
   PMTNA008             INTEGER                         ,          /*������ԱID                   */
   PMTNA009             VARCHAR2(255),                             /*��ע                         */
   PMTNA010             NUMBER(30),                                /*����ȯ����                   */
   PMTNA011             NUMBER(12,2),                              /*����ȯ�����                 */
   PMTNA012             INTEGER,                                   /*¼����ID                     */
   PMTNA013             DATE,                                      /*¼������                     */
   PMTNA014             INTEGER,                                   /*�����ID                     */
   PMTNA015             DATE,                                      /*�������                     */
   PMTNA016             VARCHAR2(1)                     not null,  /*���״̬                     */
   PMTNA017             VARCHAR2(1)                             ,  /*�������� 1.�������� 2.�����˻�*/
   PMTNA018             INTEGER                                 ,  /*��Դ����ID                   */   
   PMTNA019             VARCHAR2(30)                            ,  /*��Դ����                     */
   PMTNA020             INTEGER                         not null,  /*�����ŵ�ID                   */
   PMTNA021             VARCHAR2(2)                     not null,  /*��������                     */
   PMTNA022             INTEGER                         not null,  /*����ID                       */
   PMTNA023             NUMBER(22,2)                             ,  /*Ӧ��ȯ���ϼ�                  */
   PMTNA024             NUMBER(22,2)                              ,  /*ʵ��ȯ���ϼ�                  */
   PMTNA025             NUMBER(22,2)                            ,  /*�ѻ���ȯ���                    */
   PMTNA026             NUMBER(22,2)                            ,  /*����Ӧ����ȯ���                */
   PMTNA027             NUMBER(22,2)                            ,  /*ʵ����ȯ���ϼ�                */
   PMTNA028             NUMBER(22,2)                            ,  /*�ֽ��ȯ���                    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                     */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                 */                               
   CREATE_DATE          DATE,                                      /*��������                     */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                     */
   MODI_DATE            DATE,                                      /*�޸�����                     */
   FLAG                 NUMBER(1),                                 /*����״̬                     */
   constraint PK_TB_PMTNA primary key (PMTNA_ID)				                  
);
create unique index AK_TB_PMTNA on TB_PMTNA (PMTNA002);
create sequence SEQ_TB_PMTNA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTNA to public;
grant index  on TB_PMTNA to public;
grant update on TB_PMTNA to public; 
grant delete on TB_PMTNA to public;  
grant insert on TB_PMTNA to public; 
grant select on SEQ_TB_PMTNA to public;   